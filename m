Return-Path: <prvs=17149DC463=jeinstei@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF943E00F03; Tue, 29 Sep 2015 11:13:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_MED autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [131.225.199.28 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 68 seconds by postgrey-1.32 at yocto-www;
	Tue, 29 Sep 2015 11:13:53 PDT
Received: from ex-smtp.fnal.gov (mail03v-smtp01.fnal.gov [131.225.199.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 526D7E009BA
	for <yocto@yoctoproject.org>; Tue, 29 Sep 2015 11:13:53 -0700 (PDT)
Received: from MAIL06V-CAS04.fnal.gov (131.225.199.9) by ex-smtp.fnal.gov
	(131.225.199.28) with Microsoft SMTP Server (TLS) id 14.3.248.2;
	Tue, 29 Sep 2015 13:12:41 -0500
Received: from mail-ob0-f181.google.com (209.85.214.181) by email.fnal.gov
	(131.225.199.9) with Microsoft SMTP Server (TLS) id 14.3.248.2;
	Tue, 29 Sep 2015 13:12:45 -0500
Received: by obcgx8 with SMTP id gx8so12328648obc.3        for
	<yocto@yoctoproject.org>; Tue, 29 Sep 2015 11:12:44 -0700 (PDT)
X-Received: by 10.182.221.134 with SMTP id qe6mr14788067obc.56.1443550364800; 
	Tue, 29 Sep 2015 11:12:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.73.2 with HTTP; Tue, 29 Sep 2015 11:12:25 -0700 (PDT)
From: Josh Einstein <jeinstei@fnal.gov>
Date: Tue, 29 Sep 2015 13:12:25 -0500
Message-ID: <CAK=nXwweM7Mh=c2P=AMXVQc_NYe13ziNJk709XZEkJuYTE2eRg@mail.gmail.com>
To: <yocto@yoctoproject.org>
X-Originating-IP: [209.85.214.181]
Subject: Documentation and Scope
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
X-List-Received-Date: Tue, 29 Sep 2015 18:13:56 -0000
Content-Type: multipart/alternative; boundary="001a11c30408b59eb00520e6c279"

--001a11c30408b59eb00520e6c279
Content-Type: text/plain; charset="UTF-8"

Hi everyone-

I've been reading the reference manual, and have noticed that none of the
defines have their scope mentioned anywhere. For variables such as
PREFERRED_VERSION, this means that it is impossible to tell if this could
be used from within a recipe vs only being able to be used in the
layer.conf, or if it can be used anywhere.

I was wondering if I'm missing something about these and they should
function globally, or if the documentation needs to be updated to show
scope?

Cheers,
JE

--001a11c30408b59eb00520e6c279
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi everyone-<br><br></div>I&#39;ve bee=
n reading the reference manual, and have noticed that none of the defines h=
ave their scope mentioned anywhere. For variables such as PREFERRED_VERSION=
, this means that it is impossible to tell if this could be used from withi=
n a recipe vs only being able to be used in the layer.conf, or if it can be=
 used anywhere.<br><br></div>I was wondering if I&#39;m missing something a=
bout these and they should function globally, or if the documentation needs=
 to be updated to show scope?<br><br></div>Cheers,<br></div>JE<br></div>

--001a11c30408b59eb00520e6c279--
