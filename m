Return-Path: <b.hutchman@gmail.com>
Received: from mail-oa0-f41.google.com (mail-oa0-f41.google.com
	[209.85.219.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 800E7E0071F
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 14:06:47 -0700 (PDT)
Received: by mail-oa0-f41.google.com with SMTP id n10so1532536oag.28
	for <yocto@yoctoproject.org>; Tue, 16 Jul 2013 14:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=LS5Zn1LKLuztTbMTAeRh5a+hfxQDa7n/fTy08wCFwto=;
	b=j8sv7wp/5wB1NP3wmtxT8PifPlYYdRjn4s2tJLKhCanKA96C9tkMCpRNU95nsk4l4f
	m8nSgmWegKo2hrpl6dJWg/P8gBLwkUAGdYCuuoyPFcTVepC0H0xRDTvEMsAJT0QoGANK
	YBrJGu+XsmzH3xWor8OSMQ1baUrH9bnTKX0oCt7ycMnUSQg8SRy5xvRtsiBiWbb3YdrX
	e74uEvlXJVPAwisnOKHY8MleB6KpczNTmfjGOnB9zpBAwJ1Hp1oVgvaQBuUQ1ULuthIS
	RCr6xFSsnHvQKz+hZKFCrCjoiFbrgWq7FHwh8RFjKuH8vh4ooI2I+EpWjBLTqjgHhqAt
	o9lA==
MIME-Version: 1.0
X-Received: by 10.60.142.103 with SMTP id rv7mr4306346oeb.13.1374008807188;
	Tue, 16 Jul 2013 14:06:47 -0700 (PDT)
Received: by 10.60.26.225 with HTTP; Tue, 16 Jul 2013 14:06:46 -0700 (PDT)
Date: Tue, 16 Jul 2013 17:06:46 -0400
Message-ID: <CAFZh4h-cZH_CU--Vsjq7=97HDbQXH67SCO5aKYR9cX7h4uNxuQ@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto + meta-networking
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
X-List-Received-Date: Tue, 16 Jul 2013 21:06:52 -0000
Content-Type: multipart/alternative; boundary=047d7b2e0887def53204e1a75a04

--047d7b2e0887def53204e1a75a04
Content-Type: text/plain; charset=ISO-8859-1

Hi,

What is the "right" way of adding the meta-networking to Yocto?  I'm
obviously not doing something right.

At the poky directory level, I cloned meta-openembedded.  I then tried to
go to my build's local.conf and adding meta-networking and meta-oe layers
and I'm getting a dependency message when I try to bitbake net-snmp that
says:

ERROR: Layer dependency core of layer networking not found

This makes me think that meta-openembedded is wanting openembedded-core but
I've never tried to use that with Yocto before so I thought I better ask
before I totally mess up my build environment.

I have a rootfilesystem build based on Denzil and I need net-snmp and the
meta-networking Denzil branch is pretty much empty so I cloned master in
order to get net-snmp so I don't know if mixing branches could be my
problem (don't know how much that matters but I usually try to use the same
release branch of various components).

I've looked for examples of this kind of setup but haven't found much.

Regards,

Brian

--047d7b2e0887def53204e1a75a04
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,<div><br></div><div>What is the &quot;right&quot; way of adding the meta=
-networking to Yocto? =A0I&#39;m obviously not doing something right.</div>=
<div><br></div><div>At the poky directory level, I cloned meta-openembedded=
. =A0I then tried to go to my build&#39;s local.conf and adding meta-networ=
king and meta-oe layers and I&#39;m getting a dependency message when I try=
 to bitbake net-snmp that says:</div>
<div><br></div><div><div>ERROR: Layer dependency core of layer networking n=
ot found</div></div><div><br></div><div>This makes me think that meta-opene=
mbedded is wanting openembedded-core but I&#39;ve never tried to use that w=
ith Yocto before so I thought I better ask before I totally mess up my buil=
d environment.</div>
<div><br></div><div>I have a rootfilesystem build based on Denzil and I nee=
d net-snmp and the meta-networking Denzil branch is pretty much empty so I =
cloned master in order to get net-snmp so I don&#39;t know if mixing branch=
es could be my problem (don&#39;t know how much that matters but I usually =
try to use the same release branch of various components).</div>
<div><br></div><div>I&#39;ve looked for examples of this kind of setup but =
haven&#39;t found much.</div><div><br></div><div>Regards,</div><div><br></d=
iv><div>Brian</div><div><br></div>

--047d7b2e0887def53204e1a75a04--
