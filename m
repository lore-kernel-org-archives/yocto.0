Return-Path: <mierzejewskigrzegorz@o2.pl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 079D1E009CF; Fri, 11 May 2018 04:49:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mierzejewskigrzegorz[at]o2.pl)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [193.222.135.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 399 seconds by postgrey-1.32 at yocto-www;
	Fri, 11 May 2018 04:49:21 PDT
Received: from mx-out.tlen.pl (mx-out.tlen.pl [193.222.135.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73704E00948
	for <yocto@yoctoproject.org>; Fri, 11 May 2018 04:49:20 -0700 (PDT)
Received: (wp-smtpd smtp.tlen.pl 24672 invoked from network);
	11 May 2018 13:42:40 +0200
Received: from localhost.localdomain (HELO localhost) ([127.0.0.1])
	(envelope-sender <mierzejewskigrzegorz@o2.pl>)
	by smtp.tlen.pl (WP-SMTPD) with SMTP
	for <yocto@yoctoproject.org>; 11 May 2018 13:42:40 +0200
MIME-Version: 1.0
User-Agent: GWP-Draft
X-Originator: 94.42.83.62
X-FactoryStamp: H---
Date: Fri, 11 May 2018 13:42:39 +0200
X-Draft-Variant: new
X-Draft-Contenttype: text/html
Priority: normal
From: =?UTF-8?Q?Grzegorz_Mierzejewski?= <mierzejewskigrzegorz@o2.pl>
To: =?UTF-8?Q?yocto=40yoctoproject=2Eorg?= <yocto@yoctoproject.org>
Message-ID: <9d01063271b7468f9d1b06a9b850a2c9@grupawp.pl>
X-WP-MailID: 83582e365245ba3b3b9807845f0c68e2
X-WP-AV: skaner antywirusowy Poczty o2
X-WP-SPAM: NO 0000010 [wfN0]                               
Subject: Wrong file's ownership in rootfs.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 11 May 2018 11:49:26 -0000
Content-Type: multipart/alternative; boundary="2THMFCLCAKPTEUDHBBCLYnhgwp"

--2THMFCLCAKPTEUDHBBCLYnhgwp
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hello all,   I have the following problem concerning the file&#39;s ownersh=
ip.  In my recipe I install the new file to rootfs and change it&#39;s owne=
rship in do_install function:  do_install () {  =C2=A0=C2=A0=C2=A0 install =
-p -m 644 file1 ${D}/  =C2=A0=C2=A0=C2=A0 chmod 777 ${D}/file1  =C2=A0=C2=
=A0=C2=A0 chown ${USER_DUMMY} ${D}/file1  }   USER_DUMMY is properly create=
d with useradd class.  Thing is, that file1 in rootfs do not have the prope=
r ownership - it is instead owned by root.   I&#39;ve checked the pseudo/fi=
les.db in recipe&#39;s temp folder and ownership is proper.  Also, &#34;bit=
bake my_package -c devshell&#34; shows proper ownership (as it uses files.d=
b).  But, the same thing done in image&#39;s temp folder results in bad (ro=
ot) ownership.   Of course, it happens in modified Jethro delivered by vend=
or.   Everything works fine on official Jethro for Wandboard.   Could anyon=
e please give me some hints on what to look for as a root-cause of such beh=
avior?  Or at least describe the process of generating the files.db for ima=
ge?  Is it generated based on each package&#39;s files.db?   Any help and h=
ints would be appreciated.   Best regards,  Grzegorz.=0D

--2THMFCLCAKPTEUDHBBCLYnhgwp
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<div>Hello all,<br></div><div><br></div><div>I have the following problem c=
oncerning the file's ownership.<br></div><div>In my recipe I install the ne=
w file to rootfs and change it's ownership in do_install function:<br></div=
><div>do_install () {<br></div><div>&nbsp;&nbsp;&nbsp; install -p -m 644 fi=
le1 ${D}/<br></div><div>&nbsp;&nbsp;&nbsp; chmod 777 ${D}/file1<br></div><d=
iv>&nbsp;&nbsp;&nbsp; chown ${USER_DUMMY} ${D}/file1<br></div><div>}<br></d=
iv><div><br></div><div>USER_DUMMY is properly created with useradd class.<b=
r></div><div>Thing is, that file1 in rootfs do not have the proper ownershi=
p - it is instead owned by root.<br></div><div><br></div><div>I've checked =
the pseudo/files.db in recipe's temp folder and ownership is proper.<br></d=
iv><div>Also, "bitbake my_package -c devshell" shows proper ownership (as i=
t uses files.db).<br></div><div>But, the same thing done in image's temp fo=
lder results in bad (root) ownership.<br></div><div><br></div><div>Of cours=
e, it happens in modified Jethro delivered by vendor. <br></div><div>Everyt=
hing works fine on official Jethro for Wandboard.<br></div><div><br></div><=
div>Could anyone please give me some hints on what to look for as a root-ca=
use of such behavior?<br></div><div>Or at least describe the process of gen=
erating the files.db for image?<br></div><div>Is it generated based on each=
 package's files.db?<br></div><div><br></div><div>Any help and hints would =
be appreciated.<br></div><div><br></div><div>Best regards,<br>Grzegorz.<br>=
</div>

--2THMFCLCAKPTEUDHBBCLYnhgwp--
