Return-Path: <peachj@lexmark.com>
Received: from exprod8og118.obsmtp.com (exprod8og118.obsmtp.com [64.18.3.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3ED4E0045D
	for <yocto@yoctoproject.org>; Mon,  3 Dec 2012 07:57:03 -0800 (PST)
Received: from mail-qa0-f72.google.com ([209.85.216.72]) (using TLSv1) by
	exprod8ob118.postini.com ([64.18.7.12]) with SMTP
	ID DSNKULzLz44V+JLZwkY43mHPjTNUjIfNeHVq@postini.com;
	Mon, 03 Dec 2012 07:57:04 PST
Received: by mail-qa0-f72.google.com with SMTP id o13so5984384qaj.11
	for <yocto@yoctoproject.org>; Mon, 03 Dec 2012 07:57:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type
	:x-gm-message-state;
	bh=vPk6UKphy7ono9LKkdi19t12TJmzocYDXRtKpLuOvpw=;
	b=Jyig4HRTf2JGKdKN3/V61HxA0BrjyiZLh3TRWhR1pBbhXUzotx9igREG20SNG41YtV
	Cpugppq0fIj12pUSewAnCYHxTrpb3CVAxjMVEFjutPotpH/vpti57FGM3rSjjUpZ9h5L
	/izV/GwbxEmFiviFnWMa6amVp2DS8J97j6DYbZDsqEncg68xepKehzJhN6jne5WwNEqu
	6lA6Uy0cSArEUvmw0j2nugul53kBSAKdcZPftCRFp4wgUsABl2Mdjxq7QgRlqhGV+U1y
	F4yW8mE8NLz6M3rcJIeE7wqzE5waDDqOwQi2sM5HXv+rB6fV1JBAfGUREOUKnl8n/GFY
	Ih1Q==
Received: by 10.224.193.7 with SMTP id ds7mr17810097qab.23.1354550222808;
	Mon, 03 Dec 2012 07:57:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.224.193.7 with SMTP id ds7mr17810078qab.23.1354550222534; Mon,
	03 Dec 2012 07:57:02 -0800 (PST)
Received: by 10.49.48.196 with HTTP; Mon, 3 Dec 2012 07:57:02 -0800 (PST)
Date: Mon, 3 Dec 2012 10:57:02 -0500
Message-ID: <CA+QkY1Ai5xukjvH-yt_0O=z8VNjnTT3_4edBJTs1N5J6RZnVTg@mail.gmail.com>
From: Jerrod Peach <peachj@lexmark.com>
To: yocto <yocto@yoctoproject.org>
X-Gm-Message-State: ALoCoQk75YDaBvN5knAwOkjhX2hgIF7F42KMCorqE2Gz1eOxAdspZH9MXsiJJ5KEjmH6fOvT3C6lJ/fi6Cih/hkeIvlksK38MI38L6G4hHZKI1FN30vXDDpxnTwnqZg241Gw905M2OmZZkVIxFUoGlOMeuaPiCQltA==
Subject: recrdeptask not working correctly?
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
X-List-Received-Date: Mon, 03 Dec 2012 15:57:04 -0000
Content-Type: multipart/alternative; boundary=20cf30051342d837e104cff4cc05

--20cf30051342d837e104cff4cc05
Content-Type: text/plain; charset=ISO-8859-1

All,

I noticed the changes to recrdeptask from Yocto 1.2 to Yocto 1.3.  I saw a
number of "all" tasks in the classes change like this:

-do_checkuriall[recrdeptask] = "do_checkuri"
+do_checkuriall[recrdeptask] = "do_checkuriall do_checkuri"

I have my own task that needs to work on all packages, and I assumed making
the same change to my task would cause this to occur.  (Prior to this, I
had noticed the task seemed to only be running on about 12 packages, where
it used to run on about 60.)  So, I made the change, and indeed started
running on more packages.  It only ran on about 45 packages though, which I
found curious.  So, I dug a little deeper and had bitbake spit out
pn-buildlist for me (with the -g option).  That list showed around 75
packages.  That meant I was still not running on a pretty large number of
packages.  Then I ran checkurilall.  I noticed it, too, was running on the
same list of packages as my task, i.e. NOT all of them.

Has recrdeptask changed in some way that now prevents a task from running
on all packages in a dependency graph recursively?  Was this intentional?
 Is there some other (more preferable?) way for me to cause a task to run
on all packages in a dependency graph?

Kind regards,

Jerrod

--20cf30051342d837e104cff4cc05
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

All,<div><br></div><div>I noticed the changes to recrdeptask from Yocto 1.2=
 to Yocto 1.3. =A0I saw a number of &quot;all&quot; tasks in the classes ch=
ange like this:</div><div><br></div><div><div>-do_checkuriall[recrdeptask] =
=3D &quot;do_checkuri&quot;</div>
<div>+do_checkuriall[recrdeptask] =3D &quot;do_checkuriall do_checkuri&quot=
;</div></div><div><br></div><div>I have my own task that needs to work on a=
ll packages, and I assumed making the same change to my task would cause th=
is to occur. =A0(Prior to this, I had noticed the task seemed to only be ru=
nning on about 12 packages, where it used to run on about 60.) =A0So, I mad=
e the change, and indeed started running on more packages. =A0It only ran o=
n about 45 packages though, which I found curious. =A0So, I dug a little de=
eper and had bitbake spit out pn-buildlist for me (with the -g option). =A0=
That list showed around 75 packages. =A0That meant I was still not running =
on a pretty large number of packages. =A0Then I ran checkurilall. =A0I noti=
ced it, too, was running on the same list of packages as my task, i.e. NOT =
all of them. =A0</div>
<div><br></div><div>Has recrdeptask changed in some way that now prevents a=
 task from running on all packages in a dependency graph recursively? =A0Wa=
s this intentional? =A0Is there some other (more preferable?) way for me to=
 cause a task to run on all packages in a dependency graph?</div>
<div><br></div><div>Kind regards,</div><div><br></div><div>Jerrod</div>

--20cf30051342d837e104cff4cc05--
