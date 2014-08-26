Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9E1BDE0076B; Tue, 26 Aug 2014 04:21:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [143.182.124.21 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0627FE00566
	for <yocto@yoctoproject.org>; Tue, 26 Aug 2014 04:21:03 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 26 Aug 2014 04:21:03 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.04,404,1406617200"; d="scan'208";a="472707167"
Received: from orsmsx102.amr.corp.intel.com ([10.22.225.129])
	by azsmga001.ch.intel.com with ESMTP; 26 Aug 2014 04:21:02 -0700
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
	ORSMSX102.amr.corp.intel.com (10.22.225.129) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Tue, 26 Aug 2014 04:21:01 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.102]) by
	ORSMSX115.amr.corp.intel.com ([10.22.240.11]) with mapi id
	14.03.0195.001; Tue, 26 Aug 2014 04:21:01 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] building a hierarchical poky variable glossary, noting
	what's missing
Thread-Index: AQHPwR6TvrAnJ7C260G5UgzNPWhloJvivHZg
Date: Tue, 26 Aug 2014 11:21:00 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FDF114@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1408260648030.28643@localhost>
In-Reply-To: <alpine.LFD.2.11.1408260648030.28643@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: building a hierarchical poky variable glossary, noting what's missing
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
X-List-Received-Date: Tue, 26 Aug 2014 11:21:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,=20

I can see your link being referenced from the YP ref-manual to augment vari=
able descriptions and explanations.  Also, your compilation could act as an=
other source of information similar to the list of "other information" item=
s that currently are shown at the front of the dev-manual.

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Tuesday, August 26, 2014 4:11 AM
>To: Yocto discussion list
>Subject: [yocto] building a hierarchical poky variable glossary, noting wh=
at's
>missing
>
>
>  g'day, eh? for my own benefit (that is, for the sake of my upcoming yoct=
o
>project courses), i'm starting a topic-based poky variable glossary, just =
so i can
>quickly display all of the variables related to a particular topic.
>
>  i know there's *some* of that in the ref manual here:
>
> http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#ref-
>varlocality
>
>but i'm interested in a much more complete list and, more importantly, i w=
ant
>to add chunks of code or explanations where i think it's useful. i started=
 one of
>those a while back, but i'm updating it now and it's here (ignore everythi=
ng
>below "----- OLD CONTENT, TO BE DELETED -----"):
>
> http://www.crashcourse.ca/wiki/index.php/Poky_Variable_Glossary
>
>and here are a couple features i'm adding that might be of interest to oth=
er
>doc writers (like scott rifenbark).
>
>  first, as i add more sections and variables, each variable will be repre=
sented
>by a link to the (in-progress) ref manual entry, just so i can take advant=
age of
>what already exists, so that's no big deal.
>
>  next, in some cases, it's informative to grab some code or output from g=
rep
>to accompany the variable reference, such as what i do here for the
>PARALLEL_MAKE* variables, just to show how they're being
>used:
>
>http://www.crashcourse.ca/wiki/index.php/Poky_Variable_Glossary#Genera
>l_build_variables
>
>this makes it really easy during class to show what some variables are doi=
ng,
>and how to use them.
>
>  finally, i can also note which variables aren't currently documented in =
either
>the ref manual or in the meta/conf/documentation.conf file, since that tak=
es
>little extra time.
>
>  here's an example documenting the variables that affect the final size o=
f the
>rootfs image:
>
>http://www.crashcourse.ca/wiki/index.php/Poky_Variable_Glossary#Final_r
>ootfs.2Fimage_size
>
>first, as you can see, in some cases, it makes sense to reproduce the code=
 that
>uses all those variables so students see how they hang together, after whi=
ch i
>list the variables, and there are two variations i'm using to show missing
>documentation.
>
>  if there's no hyperlink (as with IMAGE_ROOTFS_MAXSIZE), that means there
>is no entry for that variable in the poky reference manual, so someone is
>welcome to add that.
>
>  also, the string "{!doc}" means there's no entry for that variable in th=
e
>"documentation.conf" file so, once again, someone is welcome to do
>something about that if they want.
>
>  finally, in some cases, it's not clear whether a variable should be docu=
mented
>anywhere if it's obvious it's being used only locally in a recipe or class=
 and is
>not meant to be manipulated by the developer.
>here's an example:
>
> http://www.crashcourse.ca/wiki/index.php/Poky_Variable_Glossary#U-Boot
>
>note in u-boot.inc the variable SPL_BINARY, then SPL_IMAGE and
>SPL_SYMLINK which are calculated based on it. so which of these (if
>any) deserve documentation? for now, i'm going with SPL_BINARY since it's
>meant to be used by the developer (i even show show where), but i'm leavin=
g
>out the other two. it's all a judgment call.
>
>  clearly, this is a long-term project but i'll add more sections on a reg=
ular basis
>and try to keep things up to date. if there's a better way to do this, i'm=
 open to
>suggestions.
>
>rday
>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

