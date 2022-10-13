package calculator;

import java.awt.EventQueue;

import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.JButton;
import java.awt.event.ActionListener;
import java.awt.event.ActionEvent;
import java.awt.Window.Type;
import java.awt.Color;
import java.awt.Font;
import javax.swing.JLabel;
import java.awt.SystemColor;

public class Calculator1 {

	private JFrame frmMplCalculator;
	private JTextField textField2;
	private JTextField textField1;
	private JButton buttonMultiply;
	private JButton btnSubtract;
	private JButton btnDivide;
	private JTextField textFieldAns;

	/**
	 * Launch the application.
	 */
	public static void main(String[] args) {
		EventQueue.invokeLater(new Runnable() {
			public void run() {
				try {
					Calculator1 window = new Calculator1();
					window.frmMplCalculator.setVisible(true);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		});
	}

	/**
	 * Create the application.
	 */
	public Calculator1() {
		initialize();
	}

	/**
	 * Initialize the contents of the frame.
	 */
	private void initialize() {
		frmMplCalculator = new JFrame();
		frmMplCalculator.getContentPane().setFont(new Font("Tw Cen MT Condensed", Font.PLAIN, 25));
		frmMplCalculator.setBackground(new Color(255, 128, 64));
		frmMplCalculator.setType(Type.POPUP);
		frmMplCalculator.setTitle("MPL CALCULATOR");
		frmMplCalculator.setResizable(false);
		frmMplCalculator.setBounds(100, 100, 563, 458);
		frmMplCalculator.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		frmMplCalculator.getContentPane().setLayout(null);
		
		textField2 = new JTextField();
		textField2.setBounds(288, 45, 169, 57);
		frmMplCalculator.getContentPane().add(textField2);
		textField2.setColumns(10);
		
		textField1 = new JTextField();
		textField1.setColumns(10);
		textField1.setBounds(10, 45, 169, 57);
		frmMplCalculator.getContentPane().add(textField1);
		
		JButton buttonADD = new JButton("ADD ( + )");
		buttonADD.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				int Num1,Num2,Ans;
				try {
					
					Num1=Integer.parseInt(textField1.getText() );
					Num2=Integer.parseInt(textField2.getText() );
					
					Ans=Num1+Num2; 
					textFieldAns.setText(Integer.toString(Ans) );
					
				} catch(Exception e1) {
					JOptionPane.showMessageDialog(null, "Please enter valid number");
				}
			}
			
		});
		buttonADD.setForeground(Color.BLACK);
		buttonADD.setFont(new Font("Tahoma", Font.BOLD, 13));
		buttonADD.setBounds(10, 143, 96, 57);
		frmMplCalculator.getContentPane().add(buttonADD);
		
		buttonMultiply = new JButton("Multiply ( * )");
		buttonMultiply.setForeground(Color.BLACK);
		buttonMultiply.setFont(new Font("Tahoma", Font.BOLD, 13));
		buttonMultiply.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				int Num1,Num2,Ans;
				try {
					
					Num1=Integer.parseInt(textField1.getText() );
					Num2=Integer.parseInt(textField2.getText() );
					
					Ans=Num1*Num2; 
					textFieldAns.setText(Integer.toString(Ans) );
					
				} catch(Exception e1) {
					JOptionPane.showMessageDialog(null, "Please enter valid number");
				}
			}
			
		
		});
		buttonMultiply.setBounds(135, 143, 96, 57);
		frmMplCalculator.getContentPane().add(buttonMultiply);
		
		btnSubtract = new JButton("SUB ( - )");
		btnSubtract.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				int Num1,Num2,Ans;
				try {
					
					Num1=Integer.parseInt(textField1.getText() );
					Num2=Integer.parseInt(textField2.getText() );
					
					Ans=Num1-Num2; 
					textFieldAns.setText(Integer.toString(Ans) );
					
				} catch(Exception e1) {
					JOptionPane.showMessageDialog(null, "Please enter valid number");
				}
			}
			
	
		});
		btnSubtract.setForeground(Color.BLACK);
		btnSubtract.setFont(new Font("Tahoma", Font.BOLD, 12));
		btnSubtract.setBounds(254, 143, 108, 57);
		frmMplCalculator.getContentPane().add(btnSubtract);
		
		btnDivide = new JButton(" Div ( / )");
		btnDivide.addActionListener(new ActionListener() {
			public void actionPerformed(ActionEvent e) {
				int Num1,Num2,Ans;
				try {
					
					Num1=Integer.parseInt(textField1.getText() );
					Num2=Integer.parseInt(textField2.getText() );
					
					Ans=Num1+Num2; 
					textFieldAns.setText(Integer.toString(Ans) );
					
				} catch(Exception e1) {
					JOptionPane.showMessageDialog(null, "Please enter valid number");
				}
			}
			
		});
		btnDivide.setForeground(Color.BLACK);
		btnDivide.setFont(new Font("Verdana", Font.BOLD, 13));
		btnDivide.setBounds(390, 145, 108, 51);
		frmMplCalculator.getContentPane().add(btnDivide);
		
		textFieldAns = new JTextField();
		textFieldAns.setBounds(210, 260, 229, 99);
		frmMplCalculator.getContentPane().add(textFieldAns);
		textFieldAns.setColumns(10);
		
		JLabel lblNewLabel = new JLabel("The Answer is");
		lblNewLabel.setBackground(Color.BLACK);
		lblNewLabel.setFont(new Font("Tahoma", Font.BOLD, 20));
		lblNewLabel.setBounds(31, 302, 169, 57);
		frmMplCalculator.getContentPane().add(lblNewLabel);
		
		JLabel lblNewLabel_1 = new JLabel("INPUT 1");
		lblNewLabel_1.setFont(new Font("Tahoma", Font.BOLD, 20));
		lblNewLabel_1.setBackground(SystemColor.desktop);
		lblNewLabel_1.setBounds(29, 10, 114, 25);
		frmMplCalculator.getContentPane().add(lblNewLabel_1);
		
		JLabel lblNewLabel_1_1 = new JLabel("INPUT 2");
		lblNewLabel_1_1.setFont(new Font("Tahoma", Font.BOLD, 20));
		lblNewLabel_1_1.setBackground(Color.BLACK);
		lblNewLabel_1_1.setBounds(304, 10, 114, 25);
		frmMplCalculator.getContentPane().add(lblNewLabel_1_1);
	}
}
