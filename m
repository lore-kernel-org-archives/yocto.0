Return-Path: <dclark@mmto.org>
Received: from mail-ob0-f176.google.com (mail-ob0-f176.google.com
	[209.85.214.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE913E01307
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2013 12:08:14 -0700 (PDT)
Received: by mail-ob0-f176.google.com with SMTP id uy5so5374030obc.7
	for <yocto@yoctoproject.org>; Tue, 24 Sep 2013 12:08:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=eJlYsCSB2t0NsYOkU68D19we3PpwjoYed7C8n/tZ9ps=;
	b=kRNonZKszpCbJE+VOltqSwqfAiayx0SbYPdctwBiVon3+tPpxo7RiA3rmkWmmMnFTD
	uQ4k13hLCsgi5BmLvZa7KOISi8v3YaIW4MizkF7cVJ6Hw44FQfWSAnFWazeCGHGwAApX
	YjcYpN1rTsMvM25SYen+EL8o9rzSfMit1GHZCfv8lOymvn5JsnbLMn57fiCc4m9FnEg5
	aBvAum/OqiSYa6q3Gcs4n6T2JH+j4CeHaj2/iCC3kaX9N4wjN0CJs0Ox97lNp7Ki/hz1
	0E2LJ7XengkhEKsMY/bDH6KkgOqR5MCXKMw2/Pg+FO8pbPYsOjLDp2YUsF3D+RHV0/3x
	HzVA==
X-Gm-Message-State: ALoCoQndjg/bJu0eGCAENOJIpmEBkuFsWTl26AJoa71ssQH8O2wS1heKxb49RDsd9ZAIWWb9jUBI
MIME-Version: 1.0
X-Received: by 10.60.60.5 with SMTP id d5mr26898941oer.0.1380049692487; Tue,
	24 Sep 2013 12:08:12 -0700 (PDT)
Received: by 10.182.55.10 with HTTP; Tue, 24 Sep 2013 12:08:12 -0700 (PDT)
Date: Tue, 24 Sep 2013 12:08:12 -0700
Message-ID: <CABYvHN7hqRob6p_DxOQNuOjSOHXNft2OH94jApnFWW3fHK09Pg@mail.gmail.com>
From: Dusty Clark <dclark@mmto.org>
To: yocto@yoctoproject.org
Subject: Problems with the ADT installation
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
X-List-Received-Date: Tue, 24 Sep 2013 19:08:14 -0000
Content-Type: multipart/alternative; boundary=089e0149c3c0b1882a04e725dbf2

--089e0149c3c0b1882a04e725dbf2
Content-Type: text/plain; charset=ISO-8859-1

Reading the Quick Start and ADT manuals, it was recommended to use the ADT
installer script as the easiest method to get the tools and the Eclipse
plugin in place. I'm running a Fedora 17 VM as the development host, and
would like to target Beaglebone and vanilla x86 devices using Eclipse.
However, I ran into some issues:

First, the prerequisites lists a package "eglibc-devel" that does not seem
to exist as a yum package, although it looks like the poky tarball has it
inside -- so it should be built from the source tarball during installation
of poky -- e.g. NOT using the ADT installation? The ADT guide warns against
mixing installation methods, building ADT from poky vs. the ADT installer,
etc. So, what is the recommended method for having this prerequisite
library for Yocto?

Second, the ADT installer script is pointing to 404s when getting packages:
the YOCTOADT_REPO variable is pointing to a repo at
http://adtrepo-dev.yoctoproject.org//$VERSION that doesn't exist. I edited
adt_installer.conf to point to what I thought was the appropriate master as
/1.4+snapshot-$hash-master, but the install script failed with a message
about wget trying to get the opkg portion of the repo. There appears to be
no opkg folder at all to be found there...so is the ADT installer now
deprecated and one should just install poky and build the ADT stuff from
there on?

Thanks for any help!

--089e0149c3c0b1882a04e725dbf2
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Reading the Quick Start and ADT manuals, it was recommende=
d to use the ADT installer script as the easiest method to get the tools an=
d the Eclipse plugin in place. I&#39;m running a Fedora 17 VM as the develo=
pment host, and would like to target Beaglebone and vanilla x86 devices usi=
ng Eclipse. However, I ran into some issues:<div>
<br></div><div>First, the prerequisites lists a package &quot;eglibc-devel&=
quot; that does not seem to exist as a yum package, although it looks like =
the poky tarball has it inside -- so it should be built from the source tar=
ball during installation of poky -- e.g. NOT using the ADT installation? Th=
e ADT guide warns against mixing installation methods, building ADT from po=
ky vs. the ADT installer, etc. So, what is the recommended method for havin=
g this prerequisite library for Yocto?</div>
<div><br></div><div>Second, the ADT installer script is pointing to 404s wh=
en getting packages: the YOCTOADT_REPO variable is pointing to a repo at <a=
 href=3D"http://adtrepo-dev.yoctoproject.org//$VERSION">http://adtrepo-dev.=
yoctoproject.org//$VERSION</a> that doesn&#39;t exist. I edited adt_install=
er.conf to point to what I thought was the appropriate master as /1.4+snaps=
hot-$hash-master, but the install script failed with a message about wget t=
rying to get the opkg portion of the repo. There appears to be no opkg fold=
er at all to be found there...so is the ADT installer now deprecated and on=
e should just install poky and build the ADT stuff from there on?</div>
<div><br></div><div>Thanks for any help!</div><div><br></div></div>

--089e0149c3c0b1882a04e725dbf2--
