Return-Path: <tdhammer99@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6727AE01CF7; Wed, 13 Jun 2018 20:57:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tdhammer99[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f173.google.com (mail-ot0-f173.google.com
	[74.125.82.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4DB2E00CED
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2018 20:57:11 -0700 (PDT)
Received: by mail-ot0-f173.google.com with SMTP id i19-v6so5480173otk.10
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2018 20:57:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=gVk1sFe6G4v0Z0uhZCshMAxgQ08E12yUCPmNWHItmpE=;
	b=Pry9u5MKHC6bEYcjVJntDLH3kyj7Xb4UGOHUkJtO8CAvzSqApjJoROpKoIgsbLabF4
	KTEaqRKGQS6gY5RG7eovmfhg2+VCIDgLZWIsNmVFaAeuvRqypnY680DNQhw71fY+n6Bx
	tdReQPUcdiARa1RSXyClOU1+9wTIXM9201PJNNJhik518BufxZP2m6Pd7SWOZ+2W0dTd
	SwIquw6vMAHK8elWEcrIH2kyZPcP8fCp6FePY6IR81626llpEZDSpl0UAqyROpyRxZJ5
	JCphEp5SbBTG4LSEao59A83eNWWLRE9y0YH8Z2uvW7DH04SgMCY3qjmkwKyDz9dl8uGH
	a+Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=gVk1sFe6G4v0Z0uhZCshMAxgQ08E12yUCPmNWHItmpE=;
	b=RhHUaENl3QGMvmSp5BIOHksb8BTSXuDllcGPYbI5eSFAjChsJBx1xscpWUgAoY+Yco
	liYDL7h8wSkNiTMJWHUom/YvAE05UQZL0ufaUgMtzYjtHsC+ohF0NSdJCxywzqsoBxHN
	XjaLV9Pzu8Xe7FLVRH49l3FnY8LOkYbH7+n6FubMUyZNSEbqGKc9X44fVmnzpPDf3D8B
	IViXqXEGiTkFS56ryE1bjClP4bShx64YuhVir0Bib3No4zKpT5b2ML2GKFCgXP0vybXQ
	X3K15e1XD3TwHOQaqELDf0pjcUhLTebrxwNlncKepFAExAtpNAZR4Mvh2ttsBrGfqYqi
	NDNg==
X-Gm-Message-State: APt69E2Q5ieyWgOJ8hnIWbnF26r+T2WgaR1gARp9uJIl3Vxr6dwQMC0v
	CiGZazJBvrdU08v6O+EJtE4K4PwxnBzuVqUQN5uz9kVH
X-Google-Smtp-Source: ADUXVKIYCTD+A0iaiVkggA4skAINN5bdiZsSosRMHZN2jKMN+l9YKxgYdaMxC4h95jW/4J7J7imnBWVjS2c8xF+u7vo=
X-Received: by 2002:a9d:1f74:: with SMTP id
	x49-v6mr431706otx.108.1528948631039; 
	Wed, 13 Jun 2018 20:57:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a9d:39a2:0:0:0:0:0 with HTTP; Wed, 13 Jun 2018 20:57:10
	-0700 (PDT)
From: Tim Hammer <tdhammer99@gmail.com>
Date: Wed, 13 Jun 2018 23:57:10 -0400
Message-ID: <CALh9vaWsyukbyqEz7Yr4Y5zH3PGsfgqFKYR3ofZ4CgtmAJbB1w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: /boot/ content into root filesystem?
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
X-List-Received-Date: Thu, 14 Jun 2018 03:57:12 -0000
Content-Type: multipart/alternative; boundary="0000000000000871cc056e921812"

--0000000000000871cc056e921812
Content-Type: text/plain; charset="UTF-8"

I would like to include the kernel Image and DTB files in the /boot/
directory of the root filesystem that will be installed in flash memory (
*vs.* a separate partition with the /boot/ content).



I am working with the meta-freescale layer, with MACHINE=ls1012afrdm and
core-image-minimal.



The kernel Image and DTB files required for the /boot/ directory are
created in tmp/work/.../linux-qoriq/4.14-r0/, initially stored in both
image/boot/ and package/boot/. These directories also include other
"standard" boot directory files (config, System.map, *etc.*). I figured the
best way to get the files into the root filesystem would be to add the
package to my IMAGE_INSTALL variable.

However, I could not determine a (default) package name that worked (from
the path & file names), but I did find use of KERNEL_PACKAGE_NAME (from
kernel.bbclass) in linux-qoriq_4.14.bb. So I created definitions in
linux-qoriq_4.14.bbappend:

RPROVIDES_${KERNEL_PACKAGE_NAME} = "boot-part-files"

FILES_${KERNEL_PACKAGE_NAME} += "/boot/"

That I then use in my image .conf file:

IMAGE_INSTALL += " ppfe-firmware boot-part-files"



This is working, but I was wondering if I missed another source or could
better understand the kernel.bbclass to determine the (default/correct)
package name to use in the IMAGE_INSTALL variable?

Thanks for any pointers or help!
-- 

.Tim

--0000000000000871cc056e921812
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">

















<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif"><br></p><p class=3D"MsoNormal" style=3D"margin:=
0in 0in 0.0001pt;font-size:11pt;font-family:Calibri,sans-serif">I would lik=
e to include the kernel Image and DTB files in the /boot/
directory of the root filesystem that will be installed in flash
memory (<i>vs.</i> a separate partition with the /boot/ content).<span></sp=
an></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0<span>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">I am working with the meta-freescale layer, wit=
h MACHINE=3Dls1012afrdm and
core-image-minimal.=C2=A0<span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0<span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">The kernel Image and DTB files required for the=
 /boot/
directory are created in tmp/work/.../linux-qoriq/4.14-r0/,
initially stored in both image/boot/ and package/boot/. These directories a=
lso
include other &quot;standard&quot; boot directory files (config, System.map=
,
<i>etc.</i>). I figured the best way to get the files into the root filesys=
tem would
be to add the package to my IMAGE_INSTALL variable.<span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">However, I could not determine a (default) pack=
age name that
worked (from the path &amp; file names), but I did find use of
KERNEL_PACKAGE_NAME (from <span style=3D"font-size:10pt;font-family:&quot;C=
ourier New&quot;">kernel.bbclass</span>)
in <span style=3D"font-size:10pt;font-family:&quot;Courier New&quot;"><a hr=
ef=3D"http://linux-qoriq_4.14.bb">linux-qoriq_4.14.bb</a></span>.
So I created definitions in <span style=3D"font-size:10pt;font-family:&quot=
;Courier New&quot;">linux-qoriq_4.14.bbappend</span>:<span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt 0.5in;font-size:11p=
t;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-family=
:&quot;Courier New&quot;">RPROVIDES_${KERNEL_PACKAGE_NAME} =3D
&quot;boot-part-files&quot;</span><span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt 0.5in;font-size:11p=
t;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-family=
:&quot;Courier New&quot;">FILES_${KERNEL_PACKAGE_NAME} +=3D &quot;/boot/&qu=
ot;</span><span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">That I then use in my image <span style=3D"font=
-size:10pt;font-family:&quot;Courier New&quot;">.conf</span> file:<span></s=
pan></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt 0.5in;font-size:11p=
t;font-family:Calibri,sans-serif"><span style=3D"font-size:10pt;font-family=
:&quot;Courier New&quot;">IMAGE_INSTALL +=3D &quot; ppfe-firmware
boot-part-files&quot;</span><span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">=C2=A0<span></span></p>

<p class=3D"MsoNormal" style=3D"margin:0in 0in 0.0001pt;font-size:11pt;font=
-family:Calibri,sans-serif">This is working, but I was wondering if I misse=
d another
source or could better understand the <span style=3D"font-size:10pt;font-fa=
mily:&quot;Courier New&quot;">kernel.bbclass</span> to determine the (defau=
lt/correct) package
name to use in the IMAGE_INSTALL variable?<span></span></p>





<br clear=3D"all"><div>Thanks for any pointers or help!</div>-- <br><div cl=
ass=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr"=
><br><span style=3D"font-family:arial narrow,sans-serif">.Tim</span><br></d=
iv></div>
</div>

--0000000000000871cc056e921812--
