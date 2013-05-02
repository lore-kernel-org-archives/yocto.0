Return-Path: <andrei@gherzan.ro>
Received: from mail-vb0-f41.google.com (mail-vb0-f41.google.com
	[209.85.212.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43A28E01542
	for <yocto@yoctoproject.org>; Thu,  2 May 2013 04:27:39 -0700 (PDT)
Received: by mail-vb0-f41.google.com with SMTP id x19so353370vbf.28
	for <yocto@yoctoproject.org>; Thu, 02 May 2013 04:27:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:x-originating-ip:in-reply-to:references
	:from:date:message-id:subject:to:cc:content-type:x-gm-message-state;
	bh=lELkPQ9CgLQ8CeqZgBDxBvl0qTxbH5dCFZiZYBWoURE=;
	b=oeQ65JydWwXo3KY16PNEWXe6Ux6qsy1LbteI/untcXgL5EH9hetgeNHnSEEqWXpMR5
	zm0seDwvpP964xrvHTbWZ9xW+aAytNZ5T2CI/7RlFctaIRn3kqsFH+r/hTmkQNlJb8qU
	j4xY5PCbE7A91GY93la7xueJ53nc0TEFJmJ+FCFpZjGhqQKZg1i+4DXa77HaPkbJZN3g
	SO3QCIypbQ0n3+YtitJ8t9iE4pTg8AqqNgd+RKEzOq67h1e8s/4t4HV5RDysLez51IgF
	vf9HkiwKyTRxGVLi0Ped+uuZ/OIAMfphHIGoDumxT4MwiPDHlN6qInJQF0nRTXnTC1M7
	vsZw==
X-Received: by 10.220.66.212 with SMTP id o20mr2014858vci.2.1367494058449;
	Thu, 02 May 2013 04:27:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.106.97 with HTTP; Thu, 2 May 2013 04:27:18 -0700 (PDT)
X-Originating-IP: [5.14.143.208]
In-Reply-To: <OF961E4439.7CFE5DF9-ONC1257B5F.002B2D30-C1257B5F.002CAC3A@retarus.de>
References: <OF804FFBA4.FE98BF7E-ONC1257B5D.004B9DB5-C1257B5D.004E012E@retarus.de>
	<518029CA.7080600@linux.intel.com>
	<OF961E4439.7CFE5DF9-ONC1257B5F.002B2D30-C1257B5F.002CAC3A@retarus.de>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Thu, 2 May 2013 13:27:18 +0200
Message-ID: <CAK18fxHPMLVdhFccEtjz_BF5=5pcDvdOgp4kS-ctoSA+dFeqxQ@mail.gmail.com>
To: Felix01 Fischer <felix01.fischer@iav.de>
X-Gm-Message-State: ALoCoQndl+Wfb/x1o4PNC9aBnlkwnZlxS5Q7LJ7w22kodxxFP07wdqmPuOAHs6UIgGiqL5frzHmu
Cc: Florin Sarbu <florin.sarbu@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Antwort: Re: booting with systemd fails with poky 9.0.0 & meta-ivi 4.0 & meta-intel master
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
X-List-Received-Date: Thu, 02 May 2013 11:27:39 -0000
Content-Type: multipart/alternative; boundary=047d7b33da86965d1b04dbba852e

--047d7b33da86965d1b04dbba852e
Content-Type: text/plain; charset=ISO-8859-1

On Thu, May 2, 2013 at 10:08 AM, Felix01 Fischer <felix01.fischer@iav.de>wrote:

> Hello,
>
> I've attached a file with the changes I made to local.conf, bblayers.conf
> & some output from bitbake. I can build working images for qemux86, too
>
> The build process itself triggers no errors.
>
> As im building with MACHINE ??= "crownbay" I was able to locate
> tmp-eglibc-eglibc/work/crownbay-oe-linux/foton-image/4.0.0-r0/rootfs/bin/mount
> which is a symlink to /bin/mount.util-linux. This file exists, too.
>
> This is the output when trying to boot, beginning with the /init error
>
> "/init: line 98: mount: not found
> /init: line 98: mount: not found
> /init: line 98: mount: not found
> systemd-udev[44]: starting version 199
> cat: can't open '/proc/cmdline': No such file or directory
> Waiting for removable media..."
>
>
>
So you are using crownbay. Most probably you miss some systemd configs in
kernel. That would be my guess.
Adding Florin Sarbu and Holger Behrens to CC (meta-ivi maintainer).

Cheers!

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--047d7b33da86965d1b04dbba852e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><div class=3D"gmail_quote">=
On Thu, May 2, 2013 at 10:08 AM, Felix01 Fischer <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:felix01.fischer@iav.de" target=3D"_blank">felix01.fischer@iav=
.de</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><font face=3D"sans-serif">Hello,<br>
</font>
<br><font face=3D"sans-serif">I&#39;ve attached a file with the changes
I made to local.conf, bblayers.conf &amp; some output from bitbake. I can
build working images for qemux86, too</font>
<br><font face=3D"sans-serif"><br>
The build process itself triggers no errors.<br>
</font>
<br><font face=3D"sans-serif">As im building with MACHINE ??=3D &quot;crown=
bay&quot;
I was able to locate<br>
</font><tt><font>tmp-eglibc-eglibc/work/crownbay-oe-linux/foton-image/4.0.0=
-r0/rootfs/bin/mount
which is a symlink to /bin/mount.util-linux. This file exists, too.</font><=
/tt>
<br>
<br><tt><font>This is the output when trying to boot, beginning
with the /init error<br>
<br>
&quot;/init: line 98: mount: not found</font></tt>
<br><tt><font>/init: line 98: mount: not found</font></tt>
<br><tt><font>/init: line 98: mount: not found</font></tt>
<br><font face=3D"sans-serif">systemd-udev[44]: starting version 199</font>
<br><font face=3D"sans-serif">cat: can&#39;t open &#39;/proc/cmdline&#39;: =
No
such file or directory</font>
<br><font face=3D"sans-serif">Waiting for removable media...&quot;<br>
<br></font><br></blockquote><div><br></div><div style>So you are using crow=
nbay. Most probably you miss some systemd configs in kernel. That would be =
my guess.</div><div style>Adding Florin Sarbu and Holger Behrens to CC (met=
a-ivi maintainer).</div>

<div style><br></div><div style>Cheers!</div></div><div><br></div>-- <br><d=
iv dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"text-al=
ign:center"><div align=3D"left" style=3D"font-family:&#39;Times New Roman&#=
39;;font-size:medium">

<b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small;text-alig=
n:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333" size=3D"=
-1"><br></font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.74=
4.478.414 | =A0f: +40.31.816.28.12</font><br>

</div></div></div>
</div></div>

--047d7b33da86965d1b04dbba852e--
