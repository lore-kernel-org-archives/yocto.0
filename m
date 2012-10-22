Return-Path: <seth.boll@gmail.com>
Received: from mail-oa0-f48.google.com (mail-oa0-f48.google.com
	[209.85.219.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3826EE011F3
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2012 04:56:26 -0700 (PDT)
Received: by mail-oa0-f48.google.com with SMTP id h2so2783158oag.35
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2012 04:56:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=IkLYz+A73SLgGeZYVoGPjgtP4mrVzISUvNtY/xbYFaw=;
	b=Ub7hSNbvNrABcXWC395NQkvaQrFkfYMm34AvuIknCp5RKsri379dIhPFe32YGkutMU
	u9w+QBsd4/TOI/NNRkWLoBoNrnwn1NFSK5KfSwCwVOTSAVMpmjTonyrV2FExug7Ii4+V
	LYtcvcNQUmgOkxoJZ/FF7B0Gm31jmO2dsA/q4LaAJZ2g4xYcIcMg1AEDBe+Zqhg+OJIB
	ejbdD82gl5w/VF2vxSCo/8wZMxDX55N2Z2QtfaLqWqXifmqREM/nNLlSe5vAIa9/NfG5
	tFON5QZFb63KpjlKt1XvcKO73xwLET5wFkF25FLNEr9ZXuwhMNJlmsJrRQOnAUwmj+C5
	HH4A==
MIME-Version: 1.0
Received: by 10.60.7.225 with SMTP id m1mr7992142oea.122.1350906985093; Mon,
	22 Oct 2012 04:56:25 -0700 (PDT)
Received: by 10.76.74.105 with HTTP; Mon, 22 Oct 2012 04:56:25 -0700 (PDT)
Date: Mon, 22 Oct 2012 06:56:25 -0500
Message-ID: <CA+JN8xNGvDMQKRQ18ME22DKXDaCY+UrZz+YCrW_ROHbxxf9UeA@mail.gmail.com>
From: Seth Bollinger <seth.boll@gmail.com>
To: yocto@yoctoproject.org
Subject: AUTOREV problems
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
X-List-Received-Date: Mon, 22 Oct 2012 11:56:26 -0000
Content-Type: multipart/alternative; boundary=e89a8fb1ef40f89a8d04cca48a11

--e89a8fb1ef40f89a8d04cca48a11
Content-Type: text/plain; charset=ISO-8859-1

Hello All,

I've been having some serious problems trying to get my image to rebuild
recipes when their upstream repositories have changed.  I have SRCREV =
${AUTOREV} in my recipe and in bitbake -e I see these 2 lines:
# SRCREV=${AUTOREV}
SRCREV="AUTOINC"

I've found BB_SRCREV_POLICY and I've set that explicitly to clear, even
though that seems to be the default.  Auto didn't seem to work, even though
it looks like it should from the code.

When I try rebuilding my recipe, it seems to find that everything is cached
and doesn't even attempt the fetch, even though I know the repository has
changed (that's the reason I want to rebuild :)).  I've tried whacking
tmp/cache/*, but that didn't help.  I tried whacking the stamp for
do_fetch.  That didn't help unless I explicitly built using the "fetch"
command, then it at least appeared to fetch.  However, when I tried to
build the image after that, it didn't try to rebuild the recipe that had
just fetched.

The only way I could get it to rebuild was to cleansstate on the recipe and
then rebuild the image.  I assume this isn't the way it should be working.

1.  What is the expected operation of bitbake builds for recipes using
autorev?
2.  How can I get my autorev recipes to rebuild when their repositories
change?
3.  If this is working for everyone else, how can I find what I have
screwed up?  :)

Thanks,

Seth

--e89a8fb1ef40f89a8d04cca48a11
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div>Hello All,</div><div><br></div><div>I&#39;ve been having some serious =
problems trying to get my image to rebuild</div><div>recipes when their ups=
tream repositories have changed. =A0I have SRCREV =3D</div><div>${AUTOREV} =
in my recipe and in bitbake -e I see these 2 lines:</div>
<div># SRCREV=3D${AUTOREV}</div><div>SRCREV=3D&quot;AUTOINC&quot;</div><div=
><br></div><div>I&#39;ve found BB_SRCREV_POLICY and I&#39;ve set that expli=
citly to clear, even</div><div>though that seems to be the default. =A0Auto=
 didn&#39;t seem to work, even though</div>
<div>it looks like it should from the code.</div><div><br></div><div>When I=
 try rebuilding my recipe, it seems to find that everything is cached</div>=
<div>and doesn&#39;t even attempt the fetch, even though I know the reposit=
ory has</div>
<div>changed (that&#39;s the reason I want to rebuild :)). =A0I&#39;ve trie=
d whacking</div><div>tmp/cache/*, but that didn&#39;t help. =A0I tried whac=
king the stamp for</div><div>do_fetch. =A0That didn&#39;t help unless I exp=
licitly built using the &quot;fetch&quot;</div>
<div>command, then it at least appeared to fetch. =A0However, when I tried =
to</div><div>build the image after that, it didn&#39;t try to rebuild the r=
ecipe that had</div><div>just fetched.</div><div><br></div><div>The only wa=
y I could get it to rebuild was to cleansstate on the recipe and</div>
<div>then rebuild the image. =A0I assume this isn&#39;t the way it should b=
e working.</div><div><br></div><div>1. =A0What is the expected operation of=
 bitbake builds for recipes using</div><div>autorev?</div><div>2. =A0How ca=
n I get my autorev recipes to rebuild when their repositories</div>
<div>change?</div><div>3. =A0If this is working for everyone else, how can =
I find what I have</div><div>screwed up? =A0:)</div><div><br></div><div>Tha=
nks,</div><div><br></div><div>Seth</div>

--e89a8fb1ef40f89a8d04cca48a11--
