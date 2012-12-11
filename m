Return-Path: <zachtib@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D35BDE00777
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 09:54:58 -0800 (PST)
Received: by mail-bk0-f48.google.com with SMTP id jc3so1931445bkc.35
	for <yocto@yoctoproject.org>; Tue, 11 Dec 2012 09:54:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=XlE0/Pds/cKMPxL9FTRCGCLgnKizyl1Rd8QgmxuyUD4=;
	b=OrMAMQG2gszBauhDn8bGrswEK2V0YU7XNYoYmyx+VzJIVYZFc6tVNqFzp0lA/geVEx
	7+1TIHJeCXXsJnXNDRCdIYd7bhPTqkk4iDgjBtuyBDQTCaIg/88MKXiNsft8nz3DfKEo
	MC+JbThzMdcsIZY9u7P1v21BQUklrcUb6mEkv72zk+1h27I69j759+XqPVAGz2V8Q7Cw
	IQfp9CHa3iUkCtdXhAmUIh7F72LgUU0qIYd9fvl3ptFzF/JxVIZ/zE4duh8MVevCfID/
	n8E5Ft7zaRzZnVYPMex2Yq6NmoPtgBIKgAyaw8+5owZ3bIHEGg5sZiwahvk29CwnWKQT
	iTiA==
MIME-Version: 1.0
Received: by 10.204.5.69 with SMTP id 5mr6586788bku.26.1355248497382; Tue, 11
	Dec 2012 09:54:57 -0800 (PST)
Received: by 10.204.152.140 with HTTP; Tue, 11 Dec 2012 09:54:57 -0800 (PST)
Date: Tue, 11 Dec 2012 12:54:57 -0500
Message-ID: <CALq3SOH+1wwBgskaNO0dpoMQis1FoWVuFzWmJ=0r4vpRAjy2Sg@mail.gmail.com>
From: Zach Tibbitts <zachtib@gmail.com>
To: yocto@yoctoproject.org
Subject: Boot failure when adding the meta-oe layer
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
X-List-Received-Date: Tue, 11 Dec 2012 17:54:59 -0000
Content-Type: multipart/alternative; boundary=00151758a6e644d5a604d097618d

--00151758a6e644d5a604d097618d
Content-Type: text/plain; charset=ISO-8859-1

I'm working on an embedded Linux platform for work to run an app that's
written with Gtk+3. The hardware in question is a Sandy Bridge Core i3
platform. With a vanilla Yocto build, I can boot an image just fine (I've
tested with core-image-basic, core-image-minimal, and core-image-x11) and
everything seems to work; I can even install it to the internal drive
without issue.

I found recipes for Gtk+3, as well as some of our other dependencies in the
meta-oe layer from the meta-openembedded repository. However, just adding
these layers and rebuilding any of the images that I've built (without
actually adding any new recipes) cause the image to hang when run on
hardware (but oddly enough not in QEMU).

The last line printed before the bootup apparently stops is along the lines
of: "sd 4:0:0:0: [sdb] Attached SCSI removable disk", and the line that
seems most at fault is a little farther up, "/init: line 69: udevd: not
found". If needed, I can try to capture more of the output, maybe with a
camera, I'm not sure of an easy way to pastebin the output from hardware...

What I'm wondering is if this is a known issue, or if meta-openembedded
isn't meant to be used in conjunction with Yocto. My assumption is that
something from meta-oe is superceeding a recipe in Yocto and causing this
failure.

Any help you can provide would be greatly appreciated

Thanks,

-- 
Zach Tibbitts

--00151758a6e644d5a604d097618d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

I&#39;m working on an embedded Linux platform for work to run an app that&#=
39;s written with Gtk+3. The hardware in question is a Sandy Bridge Core i3=
 platform. With a vanilla Yocto build, I can boot an image just fine (I&#39=
;ve tested with core-image-basic, core-image-minimal, and core-image-x11) a=
nd everything seems to work; I can even install it to the internal drive wi=
thout issue.<div>
<br></div><div>I found recipes for Gtk+3, as well as some of our other depe=
ndencies in the meta-oe layer from the meta-openembedded repository. Howeve=
r, just adding these layers and rebuilding any of the images that I&#39;ve =
built (without actually adding any new recipes) cause the image to hang whe=
n run on hardware (but oddly enough not in QEMU).</div>
<div><br></div><div>The last line printed before the bootup apparently stop=
s is along the lines of: &quot;sd 4:0:0:0: [sdb] Attached SCSI removable di=
sk&quot;, and the line that seems most at fault is a little farther up, &qu=
ot;/init: line 69: udevd: not found&quot;. If needed, I can try to capture =
more of the output, maybe with a camera, I&#39;m not sure of an easy way to=
 pastebin the output from hardware...</div>
<div><br></div><div>What I&#39;m wondering is if this is a known issue, or =
if meta-openembedded isn&#39;t meant to be used in conjunction with Yocto. =
My assumption is that something from meta-oe is superceeding a recipe in Yo=
cto and causing this failure.</div>
<div><br></div><div>Any help you can provide would be greatly appreciated<b=
r><div><br></div><div>Thanks,<br clear=3D"all"><div><br></div>-- <br>Zach T=
ibbitts<br>
</div></div>

--00151758a6e644d5a604d097618d--
