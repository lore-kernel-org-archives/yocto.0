Return-Path: <mariano.dominguez@tallertechnologies.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8748AE00720; Fri, 28 Oct 2016 08:43:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM, T_REMOTE_IMAGE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.177 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
	*  0.0 T_REMOTE_IMAGE Message contains an external image
Received: from mail-ua0-f177.google.com (mail-ua0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F761E00529
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2016 08:43:46 -0700 (PDT)
Received: by mail-ua0-f177.google.com with SMTP id 20so41688714uak.0
	for <yocto@yoctoproject.org>; Fri, 28 Oct 2016 08:43:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=tallertechnologies.com; s=google;
	h=mime-version:from:date:message-id:subject:to;
	bh=h/Aao3P1g8wa+Hbkby9j7OKSe63JWF8ih3pRIqyC1I8=;
	b=sjyxdbBarqUPG+SXTZ7kBJeGwt0bjBEhbLCSPAR19i2mYzEX3chPl7O4dVk+1+zdws
	FefLtibk0yaEUvE+tJvDFL+Fgs95vmC3lso2xWOkQGj6y8nc69itbLL+OMn1tdIf5JSL
	tKERVsIHV94lrMK4uY0RVmWOIk+hWnZCLP+Uo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=h/Aao3P1g8wa+Hbkby9j7OKSe63JWF8ih3pRIqyC1I8=;
	b=BUc1qgSvxOoVyc5WBDVspuyI53J0hf6osdEGzMhTmHc9a0HdrmJkBzkCY7Jdy/I9+D
	hA3CDVN5FRj6C9963LZ0Hk96ImWYehdFUWkoVl+qdhJfRErbbAeAPQlthoVkkYvuXzgn
	PAHBr0hfEUd/2pQwgmBak6bRepETu1zMa6iNlU15q8Cq42ojR+SZ0AIFMJM6tpi4MDFb
	llcIsDaK/KNxTGX/IPxdybGC6ISfoScEke22PHHdHZBiVGvuJiyBY0VP+ZHKagXUHoZk
	oAyUzIfw8BXCaWDS2N6rQk0MUp6OsXx0e3hw5Ys36Ozx+E7O3fUEnyLYsSXWIN2F84rL
	rLVw==
X-Gm-Message-State: ABUngvcLn4+Vl7QVz60duzeGGnd+4QCTz6J20W03W6wkb5YZEsP0drj55EjUDE8RuJBqvBDBjwpwoS+NFzenUdcw
X-Received: by 10.176.80.123 with SMTP id z56mr12495514uaz.139.1477669425514; 
	Fri, 28 Oct 2016 08:43:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.131.148 with HTTP; Fri, 28 Oct 2016 08:43:45 -0700 (PDT)
From: Mariano Dominguez <mariano.dominguez@tallertechnologies.com>
Date: Fri, 28 Oct 2016 12:43:45 -0300
Message-ID: <CAM9oTabeQA4Ky+jXQQeGd0bJjwo+mBrct9RWNHhG7K7Z3x+X7Q@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 31 Oct 2016 07:32:02 -0700
Subject: JFFS2 doesn't use OOB on CCIMX53
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
X-List-Received-Date: Fri, 28 Oct 2016 15:43:50 -0000
Content-Type: multipart/alternative; boundary=94eb2c1920ae342089053feeb9af

--94eb2c1920ae342089053feeb9af
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi,
I'm using Connect Core IMX53 board with Kernel version 2.6.35.14 and Yocto
1.4 OS.
I have a random problem when writing operations are done over the Nand
Flash: for instance when I insert rows into the database (the file grows)
or when I copy new files to the jffs2 partition. Sometimes I got an
input/output error and after that I won't be able to recovery the file
neither if I try to remove or if a try to copy a new file which override
the one who has problem.

Below you can see the logs:
When I insert "ls" command, the terminal throw:
'./res' input/output error   ("res" is the folders name)
And if I check the Kernel log:
jffs2_scan_inode_node(): CRC failed on node at 0x0df497c0: Read 0xffffffff,
calculated 0x33b7fc9f
JFFS2 error: (1) jffs2_build_inode_pass1: child dir "res" (ino #9334) of
dir ino #9333 appears to be a hard link
JFFS2 warning: (973) jffs2_get_inode_nodes: Eep. No valid nodes for ino
#9334.
JFFS2 warning: (973) jffs2_do_read_inode_internal: no data nodes found for
ino #9334
iget() failed for ino #9334
JFFS2 notice: (746) check_node_data: wrong data CRC in data node at
0x0df47474: read 0xfbf9abb7, calculated 0xbf64ad10.
JFFS2 warning: (1016) jffs2_get_inode_nodes: Eep. No valid nodes for ino
#9334.
JFFS2 warning: (1016) jffs2_do_read_inode_internal: no data nodes found for
ino #9334

Also I checked in U-boot if exist any bad blocks and it doesn't.
I was researching how a Nand flash works and I found that it has an
Out-of-Band (OOB) area that contains an Error-Correcting-Code (ECC)
algorithm. This ECC is used to check and fix any possible writing error.
So, when I was checking if that feature is enabled in my board I found in
the kernel log the message:

user.warn kernel: Memory policy: ECC disabled, Data cache writeback
user.info kernel: JFFS2 doesn't use OOB.


I want to know if my hypothesis is correct and how can i enable and use the
ECC and OOB?

Thanks

--=20

<http://www.tallertechnologies.com>


Mariano Dominguez

Software Engineer

Taller Technologies Argentina

San Lorenzo 47, 3rd Floor, Office 5

C=C3=B3rdoba, Argentina

Mobile: +5435157157848

--94eb2c1920ae342089053feeb9af
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div>I&#39;m using Connect Core IMX53 board =
with Kernel version 2.6.35.14 and Yocto 1.4 OS.</div><div>I have a random p=
roblem when writing operations are done over the Nand Flash: for instance w=
hen I insert rows into the database (the file grows) or when I copy new fil=
es to the jffs2 partition. Sometimes I got an input/output error and after =
that I won&#39;t be able to recovery the file neither if I try to remove or=
 if a try to copy a new file which override the one who has problem.</div><=
div><br></div><div>Below you can see the logs:</div><div>When I insert &quo=
t;ls&quot; command, the terminal throw:</div><div>&#39;./res&#39; input/out=
put error =C2=A0 (&quot;res&quot; is the folders name)</div><div>And if I c=
heck the Kernel log:</div><div><font color=3D"#999999">jffs2_scan_inode_nod=
e(): CRC failed on node at 0x0df497c0: Read 0xffffffff, calculated 0x33b7fc=
9f</font></div><div><font color=3D"#999999">JFFS2 error: (1) jffs2_build_in=
ode_pass1: child dir &quot;res&quot; (ino #9334) of dir ino #9333 appears t=
o be a hard link</font></div><div><font color=3D"#999999">JFFS2 warning: (9=
73) jffs2_get_inode_nodes: Eep. No valid nodes for ino #9334.</font></div><=
div><font color=3D"#999999">JFFS2 warning: (973) jffs2_do_read_inode_intern=
al: no data nodes found for ino #9334</font></div><div><font color=3D"#9999=
99">iget() failed for ino #9334</font></div><div><font color=3D"#999999">JF=
FS2 notice: (746) check_node_data: wrong data CRC in data node at 0x0df4747=
4: read 0xfbf9abb7, calculated 0xbf64ad10.</font></div><div><font color=3D"=
#999999">JFFS2 warning: (1016) jffs2_get_inode_nodes: Eep. No valid nodes f=
or ino #9334.</font></div><div><font color=3D"#999999">JFFS2 warning: (1016=
) jffs2_do_read_inode_internal: no data nodes found for ino #9334</font></d=
iv><div>=C2=A0</div><div>Also I checked in U-boot if exist any bad blocks a=
nd it doesn&#39;t.</div><div>I was researching how a Nand flash works and I=
 found that it has an Out-of-Band (OOB) area that contains an Error-Correct=
ing-Code (ECC) algorithm. This ECC is used to check and fix any possible wr=
iting error.</div><div>So, when I was checking if that feature is enabled i=
n my board I found in the kernel log the message:</div><div><br></div><div>=
<font color=3D"#666666">user.warn kernel: Memory policy: ECC disabled, Data=
 cache writeback</font></div><div><font color=3D"#666666"><a href=3D"http:/=
/user.info">user.info</a> kernel: JFFS2 doesn&#39;t use OOB.</font></div><d=
iv><br></div><div><br></div><div>I want to know if my hypothesis is correct=
 and how can i enable and use the ECC and OOB?</div><div><br></div><div>Tha=
nks</div><div><br></div>-- <br><div class=3D"gmail_signature"><div dir=3D"l=
tr">
=09
=09
=09


<p style=3D"margin-bottom:0in;line-height:100%"><a href=3D"http://www.talle=
rtechnologies.com" style=3D"font-size:13.3333px;font-family:verdana,sans-se=
rif;line-height:100%" target=3D"_blank"><img src=3D"http://www.tallertechno=
logies.com/templates/tallertechnologies/images/signature.png" width=3D"200"=
 height=3D"78"></a><br></p><p style=3D"margin-bottom:0in;line-height:100%">=
<font face=3D"verdana, sans-serif"><br></font></p>
<p style=3D"margin-bottom:0in;line-height:100%"><font color=3D"#222222"><fo=
nt face=3D"verdana, sans-serif"><font style=3D"font-size:10pt">Mariano Domi=
nguez</font></font></font></p><p style=3D"margin-bottom:0in;line-height:100=
%">
<font color=3D"#222222"><font face=3D"verdana, sans-serif"><font style=3D"f=
ont-size:10pt">Software
Engineer</font></font></font></p>
<p style=3D"margin-bottom:0.2in;line-height:100%">
<font color=3D"#222222"><font face=3D"verdana, sans-serif"><font style=3D"f=
ont-size:10pt">Taller
Technologies Argentina</font></font></font></p>
<p style=3D"margin-bottom:0in;line-height:100%">
<font color=3D"#222222"><font face=3D"verdana, sans-serif"><font style=3D"f=
ont-size:8pt">San
Lorenzo 47, 3rd Floor, Office 5</font></font></font></p>
<p style=3D"margin-bottom:0in;line-height:100%">
<font color=3D"#222222"><font face=3D"verdana, sans-serif"><font style=3D"f=
ont-size:8pt">C=C3=B3rdoba,
Argentina</font></font></font></p>
<p style=3D"margin-bottom:0in;line-height:100%">
<font color=3D"#222222"><font face=3D"verdana, sans-serif"><font style=3D"f=
ont-size:8pt">Mobile:=C2=A0+5435157157848
</font></font></font>
</p>
<p style=3D"margin-bottom:0in;line-height:100%"><br>
</p></div></div>
</div>

--94eb2c1920ae342089053feeb9af--
