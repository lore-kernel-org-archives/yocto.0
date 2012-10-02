Return-Path: <prvs=615926eff=Maxime.Moge@sick.de>
Received: from mail.sick.de (mail.sick.de [91.207.92.60])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A99FAE00524
	for <yocto@yoctoproject.org>; Tue,  2 Oct 2012 09:15:43 -0700 (PDT)
X-IronPort-AV: E=Sophos;i="4.80,524,1344204000"; d="scan'208";a="62334695"
Received: from unknown (HELO deags00086.sickcn.net) ([10.2.32.182])
	by mail.waki.de.dmz with ESMTP; 02 Oct 2012 18:15:38 +0200
To: yocto@yoctoproject.org
MIME-Version: 1.0
X-KeepSent: C5CA2A2E:E15C455C-C1257A8B:0058611B;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.2FP2 SHF191 July 18, 2011
Message-ID: <OFC5CA2A2E.E15C455C-ONC1257A8B.0058611B-C1257A8B.0059513B@sick.de>
From: Maxime Moge <Maxime.Moge@sick.de>
Date: Tue, 2 Oct 2012 18:15:36 +0200
X-MIMETrack: Serialize by Router on WAKMA02.waki.de.internal/SRV/SICK(Release
	8.5.3|September 15, 2011) at 02.10.2012 18:15:38
Subject: Tftp Server Problem P1021rdb
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 02 Oct 2012 16:15:44 -0000
X-Groupsio-MsgNum: 9749
Content-Type: multipart/mixed; boundary="=_mixed 00595138C1257A8B_="

--=_mixed 00595138C1257A8B_=
Content-Type: multipart/alternative; boundary="=_alternative 00595139C1257A8B_="

--=_alternative 00595139C1257A8B_=
Content-Type: text/plain; charset="US-ASCII"

Hello,


Ich ve got to install the TFTP-Server on the Linux Virtual Machine(Ubuntu 
10.04) :

        sudo apt-get install xinetd tftpd-hpa tftp

        sudo vim /etc/default/tftpd-hpa
                #defaults for tftp-hpa
                RUN_DAEMON="yes"
                OPTIONS="-l -s /var/lib/tftpboot"

Then, I set up the TFTP Folder:

        sudo mkdir /tftpboot
        sudo chmod -R 777 /tftpboot
        sudo chown -R nobody /tftpboot

Straight after that, I startet the server:
        sudo /etc/init.d/tftpd-hpa start



The problem is that I cant get any file from the server to the device.!
The problem remains when I try to get a file to my Windows Host  (Window 
7)
        T T T T T T retry count exceed...

I tried to get a file by using another terminal within the same linux 
virtual machine
        tftp VirtualMachineIP
        get RunThis.sh
        ....Timeout
It didnt work out
Alternatively, I configured the  xinetd Tftp script :
        sudo vim /etc/xinetd/tftp

Then I stopped tftpd-hpa.

then startes xinetd (sudo service xinetd start)

All that didnt work.

Any Idea what I can do?


Thank in advance


--=_alternative 00595139C1257A8B_=
Content-Type: text/html; charset="US-ASCII"

<font size=2 face="sans-serif">Hello,</font>
<br>
<br>
<br><font size=2 face="sans-serif">Ich ve got to install the TFTP-Server
on the Linux Virtual Machine(Ubuntu 10.04) :</font>
<br>
<br><font size=1 face="CourierNew">&nbsp; &nbsp; &nbsp; &nbsp; <b>sudo
apt-get install xinetd tftpd-hpa tftp</b></font>
<br>
<br><font size=1 face="CourierNew"><b>&nbsp; &nbsp; &nbsp; &nbsp; sudo
vim /etc/default/tftpd-hpa</b></font>
<br><font size=2 face="sans-serif"><b>&nbsp; &nbsp; &nbsp; &nbsp; </b></font><font size=1 face="CourierNew"><b>&nbsp;
&nbsp; &nbsp; &nbsp; #defaults for tftp-hpa</b></font>
<br><font size=1 face="CourierNew"><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; RUN_DAEMON=&quot;yes&quot;</b></font>
<br><font size=1 face="CourierNew"><b>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
&nbsp; &nbsp; &nbsp; OPTIONS=&quot;-l -s /var/lib/tftpboot&quot;</b></font>
<br>
<br><font size=1 face="CourierNew">Then, I set up the TFTP Folder:</font>
<br>
<br><font size=1 face="CourierNew">&nbsp; &nbsp; &nbsp; &nbsp; <b>sudo
mkdir /tftpboot</b></font>
<br><font size=1 face="CourierNew"><b>&nbsp; &nbsp; &nbsp; &nbsp; sudo
chmod -R 777 /tftpboot</b></font>
<br><font size=1 face="CourierNew"><b>&nbsp; &nbsp; &nbsp; &nbsp; sudo
chown -R nobody /tftpboot</b></font>
<br>
<br><font size=1 face="CourierNew">Straight after that, I startet the server:</font>
<br><font size=1 face="CourierNew">&nbsp; &nbsp; &nbsp; &nbsp; <b>sudo
/etc/init.d/tftpd-hpa start</b></font>
<br>
<br>
<br>
<br><font size=2 face="sans-serif">The problem is that I cant get any file
from the server to the device.!</font>
<br><font size=2 face="sans-serif">The problem remains when I try to get
a file to my Windows Host &nbsp;(Window 7)</font>
<br><font size=2 face="sans-serif"><b>&nbsp; &nbsp; &nbsp; &nbsp; T
T T T T T retry count exceed...</b></font>
<br>
<br><font size=2 face="sans-serif">I tried to get a file by using another
terminal within the same linux virtual machine</font>
<br><font size=1 face="CourierNew">&nbsp; &nbsp; &nbsp; &nbsp; <b>tftp
VirtualMachineIP</b></font>
<br><font size=1 face="CourierNew"><b>&nbsp; &nbsp; &nbsp; &nbsp; get
RunThis.sh</b></font>
<br><font size=1 face="CourierNew"><b>&nbsp; &nbsp; &nbsp; &nbsp; ....Timeout</b></font>
<br><font size=1 face="CourierNew"><b>It didnt work out</b></font>
<br><font size=2 face="sans-serif">Alternatively, I configured the &nbsp;xinetd
Tftp script </font><font size=1 face="CourierNew">:</font>
<br><font size=1 face="CourierNew">&nbsp; &nbsp; &nbsp; &nbsp; <b>sudo
vim /etc/xinetd/tftp</b></font>
<br>
<br><font size=2 face="sans-serif">Then I stopped tftpd-hpa.</font>
<br>
<br><font size=2 face="sans-serif">then startes xinetd </font><font size=1 face="CourierNew">(<b>sudo
service xinetd start</b>)</font>
<br>
<br><font size=1 face="CourierNew">All that didnt work.</font>
<br>
<br><font size=1 face="CourierNew">Any Idea what I can do?</font>
<br>
<br>
<br><font size=1 face="CourierNew">Thank in advance</font>
<br>
<br>

--=_alternative 00595139C1257A8B_=--

--=_mixed 00595138C1257A8B_=
Content-Type: application/octet-stream; name="tftp"
Content-Disposition: attachment; filename="tftp"
Content-Transfer-Encoding: base64

c2VydmljZSB0ZnRwCnsKZGlzYWJsZQkJPSBubwpzb2NrZXRfdHlwZQk9IGRncmFtCnBvcnQgCQk9
IDY5CnByb3RvY29sCT0gdWRwCndhaXQJCT0geWVzCnVzZXIJCT0gbm9ib2R5CnNlcnZlcgkJPSAv
dXNyL3NiaW4vaW4udGZ0cGQKc2VydmVyX2FyZ3MJPSAtbCAtcyAvdmFyL2xpYi90ZnRwYm9vdAp9
Cg==

--=_mixed 00595138C1257A8B_=--
