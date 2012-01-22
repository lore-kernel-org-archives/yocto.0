Return-Path: <jfabernathy@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 038F6E0136A
	for <yocto@yoctoproject.org>; Sun, 22 Jan 2012 12:19:58 -0800 (PST)
Received: by qcsg14 with SMTP id g14so429371qcs.35
	for <yocto@yoctoproject.org>; Sun, 22 Jan 2012 12:19:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=from:content-type:subject:date:message-id:cc:to:mime-version
	:x-mailer; bh=KZi3c7QTKrtqtB4Wm3t1tHY9HO9UAZ8OfdcjDKeHYBE=;
	b=qeLvog5nQHLI9loIEIh2C6iLy0uwdj7h3mzSTFTSpN4CUHsTNqf4x77zzDhkmwj5Ky
	prEux2DR9jEmA721OarHbaSOgh9Xi7pW3jcUsxo5Qm/XgKruL62vdldENxWnSZg4fay9
	wfQ0n2UDk0ZIESTkzzI1Y+VlW0cwCLlwasucI=
Received: by 10.229.69.96 with SMTP id y32mr1765899qci.150.1327263598163;
	Sun, 22 Jan 2012 12:19:58 -0800 (PST)
Received: from [10.0.1.26] (nc-184-3-54-63.dhcp.embarqhsd.net. [184.3.54.63])
	by mx.google.com with ESMTPS id
	bw12sm5908122qab.17.2012.01.22.12.19.57
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sun, 22 Jan 2012 12:19:57 -0800 (PST)
From: James Abernathy <jfabernathy@gmail.com>
Date: Sun, 22 Jan 2012 15:19:58 -0500
Message-Id: <56375FA8-BB1F-4D3B-91EC-C84665DF9905@gmail.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v1251.1)
X-Mailer: Apple Mail (2.1251.1)
Subject: tar ball vs. git development questions
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
X-List-Received-Date: Sun, 22 Jan 2012 20:19:59 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_255F294B-40B1-40D8-B5F6-1953560FF0AA"

--Apple-Mail=_255F294B-40B1-40D8-B5F6-1953560FF0AA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=us-ascii

I have used both git and the tarball methods of bitbaking projects, all =
of them derivatives of the examples in the Yocto documentation.  I was =
having issues using the local clone of the Yocto kernel git repository =
this weekend.  I had successfully done that before, but I was rebuilding =
the PC workstation, and getting everything setup and tested some of the =
meta-intel BSPs to make sure I had everything right.  Cloning the =
linux-yocto-3.0 repository was successful, but the bakes against it =
failed. I made sure I had poky-extras setup right, but I still had =
problems.  To isolate the problem, I changed to building with the =
tarballs and everything worked fine.

So that got me thinking what are the differences between the 2 methods:

I assume that if I use the tarball method, bitbake, using the recipes,  =
pulls down files from the online repositories and puts those files into =
the centralized local download directory ($DL_DIR), allowing reuse =
instead of re-downloading each time.  The content downloaded for =
linux-yocto-3.0 is exactly what would be pulled from the local =
repository if I used a local clone of the git repository for =
linux-yocto-3.0.
If my assumption above is correct, if I'm not modifying the source code =
of the kernel (only changing config parameters), then once you've run at =
least one build with the tarball method, the $DL_DIR directory contains =
all the files you'll need to build any image with linux-yocto-3.0. So =
there is no need to have a local clone of the kernel repository for =
speeding up development.  Am I right?
If I have a successful creation of a bare clone of linux-yocto-3.0.git, =
how could builds of Edison packages be failing?  That makes me concerned =
about using git and successfully repeating builds of stable branches =
like Edison.

Jim A=

--Apple-Mail=_255F294B-40B1-40D8-B5F6-1953560FF0AA
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=us-ascii

<html><head></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; ">I =
have used both git and the tarball methods of bitbaking projects, all of =
them derivatives of the examples in the Yocto documentation. &nbsp;I was =
having issues using the local clone of the Yocto kernel git repository =
this weekend. &nbsp;I had successfully done that before, but I was =
rebuilding the PC workstation, and getting everything setup and tested =
some of the meta-intel BSPs to make sure I had everything right. =
&nbsp;Cloning the linux-yocto-3.0 repository was successful, but the =
bakes against it failed. I made sure I had poky-extras setup right, but =
I still had problems. &nbsp;To isolate the problem, I changed to =
building with the tarballs and everything worked =
fine.<div><br></div><div>So that got me thinking what are the =
differences between the 2 methods:</div><div><br></div><div><ul =
class=3D"MailOutline"><li>I assume that if I use the tarball method, =
bitbake, using the recipes, &nbsp;pulls down files from the online =
repositories and puts those files into the centralized local download =
directory ($DL_DIR), allowing reuse instead of re-downloading each time. =
&nbsp;The content downloaded for linux-yocto-3.0 is exactly what would =
be pulled from the local repository if I used a local clone of the git =
repository for linux-yocto-3.0.</li><li>If my assumption above is =
correct, if I'm not modifying the source code of the kernel (only =
changing config parameters), then once you've run at least one build =
with the tarball method, the $DL_DIR directory contains all the files =
you'll need to build any image with linux-yocto-3.0. So there is no need =
to have a local clone of the kernel repository for speeding up =
development. &nbsp;Am I right?</li><li>If I have a successful creation =
of a bare clone of linux-yocto-3.0.git, how could builds of Edison =
packages be failing? &nbsp;That makes me concerned about using git and =
successfully repeating builds of stable branches like =
Edison.</li></ul><div><br></div></div><div>Jim A</div></body></html>=

--Apple-Mail=_255F294B-40B1-40D8-B5F6-1953560FF0AA--
