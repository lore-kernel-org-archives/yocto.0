Return-Path: <gizero@gmail.com>
Received: from mail-ve0-f171.google.com (mail-ve0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7EA1CE014A6
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2013 15:11:30 -0700 (PDT)
Received: by mail-ve0-f171.google.com with SMTP id b10so7342176vea.2
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2013 15:11:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=cWdzxZnZClvD17ZuBISbg7kPK8Xy+H3rT6Kp2dZTDDw=;
	b=ksbBu2Mjx0UFr61HL90lzg+VTB+aOH8dt73rhBl5C+p5iRTPxudB2gAGd8qkuW23yN
	/XAzEfPIJYqPWnM3n4oNRjn52KOYpU/8lu3t66yY/Yw2ujVxf7bcvCNLIEe4Q6mH+tJs
	JWxyRXMRZC+PswdQwrA3RWdN7zsjH63FStgK2Gc4YdSSP9+OX54ni5SAemoDgVtE6N0a
	gBFJ/W28ragxz61Gp3AkG+Y0W0ow0YBKOJuobVJidBuUCgSnWfjecv7Wo+/hO0bYsEDJ
	qOe7oPHtOEX2J8d5kpcbTVHLMWhL0d8CdooSlWpP0arNM5qA8cK9Dp+l96bpCAOctFhz
	rqFQ==
MIME-Version: 1.0
X-Received: by 10.52.155.228 with SMTP id vz4mr21681093vdb.5.1364422289514;
	Wed, 27 Mar 2013 15:11:29 -0700 (PDT)
Received: by 10.220.194.135 with HTTP; Wed, 27 Mar 2013 15:11:29 -0700 (PDT)
Date: Wed, 27 Mar 2013 23:11:29 +0100
Message-ID: <CAC+thW3iPEM=944xd1iR+ENEEBM=PQo6rN6eMtFBe_v=86sO9A@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
To: yocto@yoctoproject.org
Subject: software updates on Yocto based systems with limited connectivity
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
X-List-Received-Date: Wed, 27 Mar 2013 22:11:30 -0000
Content-Type: multipart/alternative; boundary=bcaec53aee9ee41b9604d8ef511e

--bcaec53aee9ee41b9604d8ef511e
Content-Type: text/plain; charset=ISO-8859-1

Hi all,

I've recently been faced the need to support an upgrade path for a system
designed with Yocto. The format for packages is currently ipk.

While the system was under development, I was heavily relying on package
feeds and opkg update/upgrade based upgrades. However, once deployed, this
device will have very limited to no connection to the network. Having the
upgrades deployed by an http feed seems to be a no-option here. Also, every
update should be better delivered in a single file for convenience.

My first approach to the problem, which I'm currently experimenting with,
is to find a suitable way to deliver onto the device whatever is required
to keep going with the opkg update/upgrade logic.
Basically, I'm trying to give the device a filesystem based feed. This can
be deployed as a self-extracting script whose main purpose is to deliver
the usual feed content and to provide a shell script running the usual opkg
update/upgrade recipe. Such an approach would meet the requirement of
delivering a single file, i.e. by uploading it to the system's web
interface.

Now, the most challenging issue I see in moving this solution from an
experimental to a real-world one is that upgrades should be as small as
possible for the sake of efficiency. This will probably involve generating
some sort of "differential" package feed, say between two know hashes of
the system project's metadata. This would allow to only deliver the
required packages: basically those that need to be upgraded, any possibly
changed dependency and, maybe, any additional package that might be
required to instal during the update.

Here comes the question. Is there any effort for solving this or similar
issues, which I guess are not so uncommon in production environments with
limited connectivity? Since I'm not aware of any, I might be completely out
of luck with the described approach.

If you have any experience to share in delivering in-field updates, I'd be
very pleased to learn from your comments or suggestions.

Regards,
Andrea

--bcaec53aee9ee41b9604d8ef511e
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi all,<br><br></div>I&#39;ve recently=
 been faced the need to support an upgrade path for a system designed with =
Yocto. The format for packages is currently ipk.<br><br></div>While the sys=
tem was under development, I was heavily relying on package feeds and opkg =
update/upgrade based upgrades. However, once deployed, this device will hav=
e very limited to no connection to the network. Having the upgrades deploye=
d by an http feed seems to be a no-option here. Also, every update should b=
e better delivered in a single file for convenience.<br>

<br></div>My first approach to the problem, which I&#39;m currently experim=
enting with, is to find a suitable way to deliver onto the device whatever =
is required to keep going with the opkg update/upgrade logic.<br>
</div><div>Basically, I&#39;m trying to give the device a filesystem based =
feed. This can be deployed as a self-extracting script whose main purpose i=
s to deliver the usual feed content and to provide a shell script running t=
he usual opkg update/upgrade recipe. Such an approach would meet the requir=
ement of delivering a single file, i.e. by uploading it to the system&#39;s=
 web interface.<br>

<br></div><div>Now, the most challenging issue I see in moving this solutio=
n from an experimental to a real-world one is that upgrades should be as sm=
all as possible for the sake of efficiency. This will probably involve gene=
rating some sort of &quot;differential&quot; package feed, say between two =
know hashes of the system project&#39;s metadata. This would allow to only =
deliver the required packages: basically those that need to be upgraded, an=
y possibly changed dependency and, maybe, any additional package that might=
 be required to instal during the update.<br>

</div><div><br></div>Here comes the question. Is there any effort for solvi=
ng this or similar issues, which I guess are not so uncommon in production =
environments with limited connectivity? Since I&#39;m not aware of any, I m=
ight be completely out of luck with the described approach. =A0<div>
<br></div><div>If you have any experience to share in delivering in-field u=
pdates, I&#39;d be very pleased to learn from your comments or suggestions.=
</div><div><br></div><div style>Regards,</div><div style>Andrea</div></div>

--bcaec53aee9ee41b9604d8ef511e--
