Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 87D90E00B28; Thu, 19 Apr 2018 23:01:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [40.92.5.56 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rksyeung[at]hotmail.com)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from NAM02-SN1-obe.outbound.protection.outlook.com
	(mail-oln040092005056.outbound.protection.outlook.com [40.92.5.56])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DEE6E00942
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2018 23:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=dG51VUgFyHn0kjo6Wxie7j7sSnt1RizFCvDDN2iXGMg=;
	b=LIhhL3ZXZEmdjUasQ0jrLiSboxrnTHu9H2tNCTCx2ZvdGqwhtltE0YEUgvOm02FpkZvx0mhEQ4nNVvHOg9rSVvEhEJF1foN2ouba8UApovv47rixxPxgAiHBqokky/2iI/r70aVcfiRvyU4zWHC0dat+VAXDSjBLFl9oiWG6biCVBK3UQUYQJf5MtWjOVi+4h+ShAWUtO01jd1JUdGUUwvO4CuMV68yGqkL21And7gllOA2qBlRrb/N8bDS6jeqF1Gx1gab3mq7M1Vb3cqXs5QS1gpD+VTeTfKRqa2P6nQ2c9h9OwNjgab3FILJvb35cSDUpM3JDqH6LeqcGZNBnhg==
Received: from CY1NAM02FT035.eop-nam02.prod.protection.outlook.com
	(10.152.74.56) by CY1NAM02HT206.eop-nam02.prod.protection.outlook.com
	(10.152.74.234) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.675.14;
	Fri, 20 Apr 2018 05:47:04 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.74.60) by
	CY1NAM02FT035.mail.protection.outlook.com (10.152.75.186) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.20.696.11 via Frontend Transport; Fri, 20 Apr 2018 05:47:04 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8%18]) with mapi id 15.20.0696.013;
	Fri, 20 Apr 2018 05:47:04 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: William Mills <wmills@ti.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Linux Files needed for PXE network boot
Thread-Index: AQHT1bpx3ngPGcU8okapyJig9EgOd6QHT4bzgAAC7yaAAUPgAIAAkZFp
Date: Fri, 20 Apr 2018 05:47:04 +0000
Message-ID: <MWHPR19MB1183CB8761F21E7D2AEF3258C5B40@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <MWHPR19MB1183563A0DFAFC6B7313C25CC5B00@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB1183C61B954575D9F17CA1BEC5B50@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB11839D60DD5DADD1573F4291C5B50@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<876a79a0-f419-9cbb-3dce-3de77113c525@ti.com>
In-Reply-To: <876a79a0-f419-9cbb-3dce-3de77113c525@ti.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:F05E80213FAE936C4A28F17CCD4EB065383765BBF1AA688A2D7064B9E4A400C2;
	UpperCasedChecksum:8FB642D88AAB0B176D605F79B79F9BA9C78DBA1A8E245EB534CE2992AF0179E9;
	SizeAsReceived:7442; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [yFiLagJl9kexl4HaU5NAJ/cqY5z5gprKVXAoiu83n6qIOxiUJecyt5RXJ4YdAorH]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CY1NAM02HT206;
	7:tjEZjdnFG2nXpnVC+5B1DIbKw4sRlb0bnuXGLFB/nmoyyzqd7eznHNMM7Q/TRq/G8E427xKIvEG8H+XYGH7D/jZNYRCQkcIgROjGzxM3JFxje4SIbdZIYiwvkJcW7Ias7SOLq5mZ7O4M479+91nDjWXhAvZumM4KnlJUIFtWCtC4GidGcNKhC+ea2+Tqd+6ls3l/1S+sYm8wxlE/J4Kl06Qb9/mFZ8EfbQfFUeo8k+Lh3PUBQtXuKr8p3L06Ku30
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1603101448)(1601125374)(1701031045);
	SRVR:CY1NAM02HT206; 
x-ms-traffictypediagnostic: CY1NAM02HT206:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:CY1NAM02HT206; BCL:0; PCL:0; RULEID:; SRVR:CY1NAM02HT206; 
x-forefront-prvs: 0648FCFFA8
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:CY1NAM02HT206;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: sFhBOWuKRlFHJdfj+0ETV9nMY0POD9sHZr+ZYhvMWu9yD64+PgSFTDhWDS+dX+dr589sp8U0I+mFux428uQeqFL/v1pGr7dGLIP/grdHUA0UoaN2tQC08MjvTQGk3DsB5sHXOGZzCCOKhRqpvd0oPZ3mPkFaYfKkGBxRm7FxmnKucM4gKSWqm3ZGuhZhePrn
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 1058c8e5-b5da-474a-3721-08d5a6822589
X-OriginatorOrg: hotmail.com
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: 1058c8e5-b5da-474a-3721-08d5a6822589
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 20 Apr 2018 05:47:04.7877 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY1NAM02HT206
Subject: Re: Linux Files needed for PXE network boot
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
X-List-Received-Date: Fri, 20 Apr 2018 06:01:20 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB1183CB8761F21E7D2AEF3258C5B40MWHPR19MB1183namp_"

--_000_MWHPR19MB1183CB8761F21E7D2AEF3258C5B40MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks William.  I think I need to backtrack at least 1 step from the files=
 used.  I've been stuck at tftp of 1st stage boot loader (e.g. pxelinux.0, =
or grub).  If I set it up to use pxelinux.0, on client side, I only saw suc=
cessful download of this file, and then it failed due to "Boot option loadi=
ng failed".  On the server side, I didn't see any more access beyond this t=
ftp.


If I set it up to use bootx64.efi, I could see the client side boot to grub=
 and then got stuck there.  Again, no further activity on server side beyon=
d such tftp.  The client side doesn't seem to even come back for more files=
 (e.g. the pxelinux.cfg/default).  Below is my /etc/dhcp/dhcpd.conf.  Pleas=
e someone review to see if I did something wrong.  The DHCP server has 192.=
168.1.1 IP address, same as TFTP server; they both are on the same machine.


authoritative;

allow booting;

allow bootp;

default-lease-time 3600;

max-lease-time 7200;


subnet 192.168.1.0 netmask 255.255.255.0 {

  range 192.168.1.10 192.168.1.20;

  next-server 192.168.1.1;

#  filename "pxelinux.0";

  filename "bootx64.efi";

}


option space PXE;

option PXE.discovery-control code 6 =3D unsigned integer 8;


class "PXE" {

#   match if substring (option vendor-class-identifier, 0, 9) =3D "PXEClien=
t";

    option vendor-class-identifier "PXEClient";

    option tftp-server-name "192.168.1.1";

    option bootfile-name "bootx64.efi";

    vendor-option-space PXE;

    option PXE.discovery-control 11;

}


Thanks,

Raymond



________________________________
From: William Mills <wmills@ti.com>
Sent: Thursday, April 19, 2018 1:56 PM
To: Raymond Yeung; yocto@yoctoproject.org
Subject: Re: [yocto] Linux Files needed for PXE network boot

Robert,

I assume no one responded to you because you did not supply enough
information to understand your situation.  (You don't specify what HW
you are using, version of Yocto Project, what DHCP server, etc.)

From the second message I can tell you are using a X86_64 based
platform.  Is this a commercial PC or a developer board (Minnow etc)?

If I were you I would focus on the UEFI mode as you are closer there.

I am not an X86 UEFI expect but ...


On 04/18/2018 09:38 PM, Raymond Yeung wrote:
> Another thing I haven't tried is to set up NFS.  Can we simply specify
> ONE file (similar to .hddimg) that could be tftp over to target, and
> expect it to boot up?  Could this be the cause of my problem?
>

Yes, Grub should be able to go back to the TFTP server to get more files.

Alternatively, yes, it is possible (but a bit ugly) to create one file
for the TFTP server that has everything.

It has been 4 years ago now but I did play with Minnow board UEFI and
GRUB via netboot.

What I got working was a single fat Grub binary with kernel and initram
disk included.  I did this because the UEFI on minnow at that time had
trouble using the ethernet from grub but could reliably transfer a large
file before the handoff.  I would hope this is now fixed on minnow and
commercial PCs would not have this issue.

Anyway if you want to see what I did the files are here:
http://arago-project.org/files/short-term/misc/make-netbootia32.tar.bz2

I would not recommend using these binaries (They are 32bit UEFI and old)
but you can see what I did looking at the README.txt file.

>
>
> ------------------------------------------------------------------------
> *From:* Raymond Yeung <rksyeung@hotmail.com>
> *Sent:* Wednesday, April 18, 2018 6:33 PM
> *To:* yocto@yoctoproject.org
> *Subject:* Re: Linux Files needed for PXE network boot
>
>
> I've yet to receive any response to my post below.  I've gone through
> fair amount of experimentation to get my board downloaded successfully
> the first-stage boot loader.  I'd tried pxelinux.0 for legacy BIOS and
> bootx64.efi (also generated in build process) to work with UEFI on
> client side.  However, no luck going any further so far.  Debugging the
> client side is rather cryptic (black box).
>
>
> I'm just wondering if it's because of a missing kick-start file
> (ks.conf)?  I've tried "kernel images/<kernel>.hddimg" (was careful in
> specifying the path relative /tftpboot root directory), also
> bzImage.bin, and the combo of vmlinuz + initrd files.  Neither one of
> the works so far.  When I tried UEFI with bootx64.efi, the client side
> stops at GRUB, complaining "error: no such device:
> ()/EFI/BOOT/grub.cfg."  When I tried legacy BIOS with pxelinux.0, I got
> "PXE-E16: No offer received.  ERROR: Boot option loading failed".
>
>
> Any idea anyone?
>
>

I believe the () in ()/EFI/BOOT/grub.cfg should have been (tftp) to make
grub go back to the TFTP server for the config file.  Something is not
right in your setup or UEFI to Grub hand-off.  Can you get a Grub shell
prompt?  If so you should be able to debug from there.

Again see the README.txt in the file I referenced above.  It shows how I
configured grub.

>
> ------------------------------------------------------------------------
> *From:* Raymond Yeung <rksyeung@hotmail.com>
> *Sent:* Monday, April 16, 2018 12:42 PM
> *To:* yocto@yoctoproject.org
> *Subject:* Linux Files needed for PXE network boot
>
> I've a .hddimg image bootable from USB thumb drive.  As part of the
> boot-up, I also could invoke "Serial Install" to transfer such an image
> to SSD, such that in the next round, I could boot from SSD instead.
>
> What are the files and where do I get them (relative to where I find
> .hddimg) from the build tree, and install them on the tftp server, in
> order to support PXE network booting?  Also, what mechanism do people
> use to transfer this after PXE boot into the SSD, making it bootable?
>
> Raymond
>
>

--_000_MWHPR19MB1183CB8761F21E7D2AEF3258C5B40MWHPR19MB1183namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Thanks William. &nbsp;I think I n=
eed to backtrack at least 1 step from the files used. &nbsp;I've been stuck=
 at tftp of 1st stage boot loader (e.g. pxelinux.0, or grub). &nbsp;If I se=
t it up to use pxelinux.0, on client side, I only
 saw successful download of this file, and then it failed due to &quot;Boot=
 option loading failed&quot;. &nbsp;On the server side, I didn't see any mo=
re access beyond this tftp.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">If I set it up to use bootx64.efi=
, I could see the client side boot to grub and then got stuck there. &nbsp;=
Again, no further activity on server side beyond such tftp. &nbsp;The clien=
t side doesn't seem to even come back for more
 files (e.g. the pxelinux.cfg/default). &nbsp;Below is my /etc/dhcp/dhcpd.c=
onf. &nbsp;Please someone review to see if I did something wrong. &nbsp;The=
 DHCP server has 192.168.1.1 IP address, same as TFTP server; they both are=
 on the same machine.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">authori=
tative;</span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">allow b=
ooting;</span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">allow b=
ootp;</span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">default=
-lease-time 3600;</span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">max-lea=
se-time 7200;</span></p>
<p><br>
</p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">subnet =
192.168.1.0 netmask 255.255.255.0 {</span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">&nbsp; =
range 192.168.1.10 192.168.1.20;</span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">&nbsp; =
next-server 192.168.1.1;</span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;"># &nbsp=
;filename &quot;pxelinux.0&quot;;</span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">&nbsp; =
filename &quot;bootx64.efi&quot;;</span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">}</span=
></p>
<p><br>
</p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">option =
space PXE;</span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">option =
PXE.discovery-control code 6 =3D unsigned integer 8;</span></p>
<p><br>
</p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">class &=
quot;PXE&quot; {</span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;"># &nbsp=
; match if substring (option vendor-class-identifier, 0, 9) =3D &quot;PXECl=
ient&quot;; &nbsp;</span><br>
</p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">&nbsp; =
&nbsp; option vendor-class-identifier &quot;PXEClient&quot;;</span><br>
</p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">&nbsp; =
&nbsp; option tftp-server-name &quot;192.168.1.1&quot;;</span><br>
</p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">&nbsp; =
&nbsp; option bootfile-name &quot;bootx64.efi&quot;;</span><br>
</p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">&nbsp; =
&nbsp; vendor-option-space PXE;</span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">&nbsp; =
&nbsp; option PXE.discovery-control 11;</span></p>
<p><span style=3D"font-family: &quot;Courier New&quot;, monospace;">}</span=
></p>
<p><br>
</p>
<p>Thanks,</p>
<p>Raymond</p>
<p><br>
</p>
<br>
<br>
<div style=3D"color: rgb(0, 0, 0);">
<hr style=3D"display:inline-block;width:98%" tabindex=3D"-1">
<div id=3D"divRplyFwdMsg" dir=3D"ltr"><font face=3D"Calibri, sans-serif" st=
yle=3D"font-size:11pt" color=3D"#000000"><b>From:</b> William Mills &lt;wmi=
lls@ti.com&gt;<br>
<b>Sent:</b> Thursday, April 19, 2018 1:56 PM<br>
<b>To:</b> Raymond Yeung; yocto@yoctoproject.org<br>
<b>Subject:</b> Re: [yocto] Linux Files needed for PXE network boot</font>
<div>&nbsp;</div>
</div>
<div class=3D"BodyFragment"><font size=3D"2"><span style=3D"font-size:11pt;=
">
<div class=3D"PlainText">Robert,<br>
<br>
I assume no one responded to you because you did not supply enough<br>
information to understand your situation.&nbsp; (You don't specify what HW<=
br>
you are using, version of Yocto Project, what DHCP server, etc.)<br>
<br>
From the second message I can tell you are using a X86_64 based<br>
platform.&nbsp; Is this a commercial PC or a developer board (Minnow etc)?<=
br>
<br>
If I were you I would focus on the UEFI mode as you are closer there.<br>
<br>
I am not an X86 UEFI expect but ...<br>
<br>
<br>
On 04/18/2018 09:38 PM, Raymond Yeung wrote:<br>
&gt; Another thing I haven't tried is to set up NFS. &nbsp;Can we simply sp=
ecify<br>
&gt; ONE file (similar to .hddimg) that could be tftp over to target, and<b=
r>
&gt; expect it to boot up? &nbsp;Could this be the cause of my problem?<br>
&gt;<br>
<br>
Yes, Grub should be able to go back to the TFTP server to get more files.<b=
r>
<br>
Alternatively, yes, it is possible (but a bit ugly) to create one file<br>
for the TFTP server that has everything.<br>
<br>
It has been 4 years ago now but I did play with Minnow board UEFI and<br>
GRUB via netboot.<br>
<br>
What I got working was a single fat Grub binary with kernel and initram<br>
disk included.&nbsp; I did this because the UEFI on minnow at that time had=
<br>
trouble using the ethernet from grub but could reliably transfer a large<br=
>
file before the handoff.&nbsp; I would hope this is now fixed on minnow and=
<br>
commercial PCs would not have this issue.<br>
<br>
Anyway if you want to see what I did the files are here:<br>
<a href=3D"http://arago-project.org/files/short-term/misc/make-netbootia32.=
tar.bz2" id=3D"LPlnk857112" previewremoved=3D"true">http://arago-project.or=
g/files/short-term/misc/make-netbootia32.tar.bz2</a><br>
<br>
I would not recommend using these binaries (They are 32bit UEFI and old)<br=
>
but you can see what I did looking at the README.txt file.<br>
<br>
&gt; <br>
&gt; <br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; *From:* Raymond Yeung &lt;rksyeung@hotmail.com&gt;<br>
&gt; *Sent:* Wednesday, April 18, 2018 6:33 PM<br>
&gt; *To:* yocto@yoctoproject.org<br>
&gt; *Subject:* Re: Linux Files needed for PXE network boot<br>
&gt; &nbsp;<br>
&gt; <br>
&gt; I've yet to receive any response to my post below. &nbsp;I've gone thr=
ough<br>
&gt; fair amount of experimentation to get my board downloaded successfully=
<br>
&gt; the first-stage boot loader. &nbsp;I'd tried pxelinux.0 for legacy BIO=
S and<br>
&gt; bootx64.efi (also generated in build process) to work with UEFI on<br>
&gt; client side. &nbsp;However, no luck going any further so far. &nbsp;De=
bugging the<br>
&gt; client side is rather cryptic (black box).<br>
&gt; <br>
&gt; <br>
&gt; I'm just wondering if it's because of a missing kick-start file<br>
&gt; (ks.conf)? &nbsp;I've tried &quot;kernel images/&lt;kernel&gt;.hddimg&=
quot; (was careful in<br>
&gt; specifying the path relative /tftpboot root directory), also<br>
&gt; bzImage.bin, and the combo of vmlinuz &#43; initrd files. &nbsp;Neithe=
r one of<br>
&gt; the works so far. &nbsp;When I tried UEFI with bootx64.efi, the client=
 side<br>
&gt; stops at GRUB, complaining &quot;error: no such device:<br>
&gt; ()/EFI/BOOT/grub.cfg.&quot; &nbsp;When I tried legacy BIOS with pxelin=
ux.0, I got<br>
&gt; &quot;PXE-E16: No offer received. &nbsp;ERROR: Boot option loading fai=
led&quot;.<br>
&gt; <br>
&gt; <br>
&gt; Any idea anyone?<br>
&gt; <br>
&gt; <br>
<br>
I believe the () in ()/EFI/BOOT/grub.cfg should have been (tftp) to make<br=
>
grub go back to the TFTP server for the config file.&nbsp; Something is not=
<br>
right in your setup or UEFI to Grub hand-off.&nbsp; Can you get a Grub shel=
l<br>
prompt?&nbsp; If so you should be able to debug from there.<br>
<br>
Again see the README.txt in the file I referenced above.&nbsp; It shows how=
 I<br>
configured grub.<br>
<br>
&gt; <br>
&gt; ----------------------------------------------------------------------=
--<br>
&gt; *From:* Raymond Yeung &lt;rksyeung@hotmail.com&gt;<br>
&gt; *Sent:* Monday, April 16, 2018 12:42 PM<br>
&gt; *To:* yocto@yoctoproject.org<br>
&gt; *Subject:* Linux Files needed for PXE network boot<br>
&gt; &nbsp;<br>
&gt; I've a .hddimg image bootable from USB thumb drive. &nbsp;As part of t=
he<br>
&gt; boot-up, I also could invoke &quot;Serial Install&quot; to transfer su=
ch an image<br>
&gt; to SSD, such that in the next round, I could boot from SSD instead.<br=
>
&gt; <br>
&gt; What are the files and where do I get them (relative to where I find<b=
r>
&gt; .hddimg) from the build tree, and install them on the tftp server, in<=
br>
&gt; order to support PXE network booting? &nbsp;Also, what mechanism do pe=
ople<br>
&gt; use to transfer this after PXE boot into the SSD, making it bootable?<=
br>
&gt; <br>
&gt; Raymond<br>
&gt; <br>
&gt; <br>
</div>
</span></font></div>
</div>
</div>
</body>
</html>

--_000_MWHPR19MB1183CB8761F21E7D2AEF3258C5B40MWHPR19MB1183namp_--
