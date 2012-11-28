Return-Path: <k.bouhara@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1E62AE01275
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2012 00:31:19 -0800 (PST)
Received: by mail-lb0-f176.google.com with SMTP id k6so11346937lbo.35
	for <yocto@yoctoproject.org>; Wed, 28 Nov 2012 00:31:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to:content-type;
	bh=wJJkbNXLFvi8rl5Cd0yEqdBochT2WKWdBxDQd4+CXwE=;
	b=okv/K2puUlMkH5i31fBxAQFE+Ax8sOL5/QZObnM9CaCmrg2J1MUnFQyqG2xpS7q+OZ
	9OOatvjSOyBmsvPZC/SRjZRV7n3v/PlJspe4mQ4UUz3G8LxqZujnG7iJfzjCjZ1OTklf
	B5jdvz229IRkIBMEgYxzv7V0RTrVK/jgE/x/QOKghX6W1YXWkpkFeP8O58v6IptUcbBi
	5NxENiU/B1yZP7iZzjNsGUaQg/kyQ/Lupj24UndFZPxGG7CROUqTaEH1T6CPuNT1eigu
	+PPXgJnXYTMrr+/v5LMIpnkStfl8j1RnnwD/qP7wOrfkQdRwbsjeerxpIh2t38G26xap
	ucsA==
Received: by 10.152.106.4 with SMTP id gq4mr16955955lab.44.1354091478657; Wed,
	28 Nov 2012 00:31:18 -0800 (PST)
MIME-Version: 1.0
Received: by 10.152.146.131 with HTTP; Wed, 28 Nov 2012 00:30:58 -0800 (PST)
From: Kamel BOUHARA <k.bouhara@gmail.com>
Date: Wed, 28 Nov 2012 09:30:58 +0100
Message-ID: <CAM9uW_7oiB6H8Bp=xZ22-MWDgAE4Y+vJAADH3W6k86u5Jcqc6Q@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Wed, 28 Nov 2012 07:46:24 -0800
Subject: Qt and OpenGLE package
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
X-List-Received-Date: Wed, 28 Nov 2012 08:31:20 -0000
Content-Type: multipart/alternative; boundary=f46d04083e0f9429e304cf89fd20

--f46d04083e0f9429e304cf89fd20
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

Im trying to build a qt application whitch use qt4e class. Here is the
result of the compilation:

.../build/tmp/sysroots/i686-linux/usr/libexec/armv7a-vfp-neon-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.6.4/ld:
cannot find -lQtOpenGLE

So I'am wondering if a package "libqt-embeddedopengl4" exist and can be
added to the task-qt4e.bb recipe ?

-- 
Best Regards
_______________________________*
Kamel BOUHARA**

*
*
*

--f46d04083e0f9429e304cf89fd20
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi all,<div><br></div><div>Im trying to build a qt application whitch use q=
t4e class. Here is the result of the compilation:</div><div><br></div><div>=
.../build/tmp/sysroots/i686-linux/usr/libexec/armv7a-vfp-neon-poky-linux-gn=
ueabi/gcc/arm-poky-linux-gnueabi/4.6.4/ld: cannot find -lQtOpenGLE=A0<br cl=
ear=3D"all">

<div><br></div><div>So I&#39;am wondering if a package &quot;libqt-embedded=
opengl4&quot; exist and can be added to the <a href=3D"http://task-qt4e.bb"=
>task-qt4e.bb</a> recipe ?=A0</div><div><br></div>-- <br>Best Regards<br><d=
iv>

_______________________________<b><i><font face=3D"&#39;comic sans ms&#39;,=
 sans-serif"><br></font></i><font face=3D"&#39;comic sans ms&#39;, sans-ser=
if">Kamel BOUHARA</font></b><b><br><br></b><div><b><br></b></div><div><br>
</div>
<div><br></div></div><br>
</div>

--f46d04083e0f9429e304cf89fd20--
