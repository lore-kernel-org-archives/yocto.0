Return-Path: <jfabernathy@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C60CDE011C5
	for <yocto@yoctoproject.org>; Wed,  3 Oct 2012 06:05:26 -0700 (PDT)
Received: by oagh2 with SMTP id h2so9696540oag.35
	for <yocto@yoctoproject.org>; Wed, 03 Oct 2012 06:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ZfXpcYYywAX3WmtJFjKsp9NY3diXkVSBb4vA8esAF68=;
	b=ND1kX0DJ1mJ2WBAsCMRRzz1q1YBu99VRNOOtd8bgVB0RfMajLaECSdPddX6geNb5Nw
	OK/0HAOGJQGfgzmmtaB1DAfxP1PsdZcb64pz1RJ2c9nsAwhfkJEG7nOIRulRtMslmT1a
	LkYM/9U1PCROpO32FDFkXMsejFZ1O0tNp6TzRo//Nqbco2BOCpAHwuSK6yJITW/l9ypf
	6rKrjwqy1LLaeWwVFlDoH5JrGBAzBWchVhLweyxm4SEGrjWKUABcqGJYL4t8e1cvCu9L
	B1ReO9I4icM3k0L9q0G+sa4Nlo+HTR1e7lO/bqFZQ4Tzza0VdbRYyzUg256QsNzK8Y2w
	WJfA==
MIME-Version: 1.0
Received: by 10.60.5.193 with SMTP id u1mr1434715oeu.111.1349269523734; Wed,
	03 Oct 2012 06:05:23 -0700 (PDT)
Received: by 10.76.143.225 with HTTP; Wed, 3 Oct 2012 06:05:23 -0700 (PDT)
Date: Wed, 3 Oct 2012 09:05:23 -0400
Message-ID: <CANFv2EnwjYa=DNKfiR9y9g+G_j=8WXyVZtBX_2gKcfM7Ga4MqQ@mail.gmail.com>
From: James Abernathy <jfabernathy@gmail.com>
To: yocto@yoctoproject.org
Subject: Correct procedure for rebuilding after a git pull
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
X-List-Received-Date: Wed, 03 Oct 2012 13:05:27 -0000
Content-Type: multipart/alternative; boundary=e89a8ff1cf22ab20bf04cb274ab7

--e89a8ff1cf22ab20bf04cb274ab7
Content-Type: text/plain; charset=ISO-8859-1

So I'm looking for the right way to do this.  Here's the scenario.  I do a
complete build of the image core-image-cdv-media for the cedartrail
machine.  No changes from the basic BSP, except for the addition of my
meta-layer that include test audios and videos to help test the media
playback using gst-launch.  I'm tracking the latest Denzil branch.  So
everything works well to this point.

Now I see a bunch of patches pushed to Denzil branch and I want to test
them.  My build directory is untouched since the successful build before.
What do I do to rebuild my project to include the latest patches.  I've
tried things like "bitbake -c cleansstate core-image-cdv-media" before the
new "bitbake core-image-cdv-media" and I've tried just rebaking by itself.
Something always fails.  I've learned that to really test I have to
completely delete my build directory saving only my local.conf and
bblayer.conf.

Am I missing something or is a complete rebuild the only way to get the new
patches in and a successful build??

Jim A

--e89a8ff1cf22ab20bf04cb274ab7
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>So I&#39;m looking for the right way to do this.=A0 Here&#39;s the sce=
nario.=A0 I do a complete build of the image core-image-cdv-media for the c=
edartrail machine.=A0 No changes from the basic BSP, except for the additio=
n of my meta-layer that include test audios and videos to help test the med=
ia playback using gst-launch.=A0 I&#39;m tracking the latest Denzil branch.=
=A0 So everything works well to this point.</div>

<div>=A0</div>
<div>Now I see a bunch of patches pushed to Denzil branch and I want to tes=
t them.=A0 My build directory is untouched since the successful build befor=
e.=A0 What do I do to rebuild my project to include the latest patches.=A0 =
I&#39;ve tried things like &quot;bitbake -c cleansstate core-image-cdv-medi=
a&quot; before the new &quot;bitbake core-image-cdv-media&quot; and I&#39;v=
e tried just rebaking by itself.=A0 Something always fails.=A0 I&#39;ve lea=
rned that to really test I have to completely delete my build directory sav=
ing only my local.conf and bblayer.conf.</div>

<div>=A0</div>
<div>Am I missing something or is a complete rebuild the only way to get th=
e new patches in and a successful build??</div>
<div>=A0</div>
<div>Jim A</div>
<div>=A0</div>

--e89a8ff1cf22ab20bf04cb274ab7--
