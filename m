Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7F7F0E00BA1; Wed, 23 Sep 2015 10:43:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,MSGID_MULTIPLE_AT,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.0 MSGID_MULTIPLE_AT Message-ID contains multiple '@'
	characters
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.40.44.146 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtprelay.hostedemail.com (smtprelay0146.hostedemail.com
	[216.40.44.146])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63ABBE00A81
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 10:43:05 -0700 (PDT)
Received: from filter.hostedemail.com (unknown [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 65ABEC2120;
	Wed, 23 Sep 2015 17:43:04 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: field57_1aba4bc4f7f32
X-Filterd-Recvd-Size: 1388
Received: from sdcapont (unknown [5.133.41.213])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf08.hostedemail.com (Postfix) with ESMTPA;
	Wed, 23 Sep 2015 17:43:03 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "'Khem Raj'" <raj.khem@gmail.com>
References: <5602c0f1.4831320a.a4fa4.48f6SMTPIN_ADDED_BROKEN@mx.google.com>
	<CAMKF1spDKFjO_3=2dJeF9KcEBepG+creiKOfHL2RwSS3Dp9vHQ@mail.gmail.com>
In-Reply-To: <CAMKF1spDKFjO_3=2dJeF9KcEBepG+creiKOfHL2RwSS3Dp9vHQ@mail.gmail.com>
Date: Wed, 23 Sep 2015 18:43:00 +0100
Organization: SDC Systems Limited
Message-ID: <000901d0f627$4b1a32f0$e14e98d0$@pont@sdcsystems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdD2IAeP6Xy8j/+ITj6togyeIYiGZwABi9mw
Cc: yocto@yoctoproject.org
Subject: Re: psplash wierdness
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: andy.pont@sdcsystems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 23 Sep 2015 17:43:09 -0000
Content-Type: text/plain;
	charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-gb

Khem wrote...


> Your initrd is missing /dev/null device it seems. You need to create =
it dring build or=20
> some runtime mechanism=20

Hmmm, on further inspection it appears that in the /etc/rcS.d run level =
that psplash has been created as S00 while udev which is presumably =
going to create these devices isn't setup to be called until S04!

Bit more thought needed here...

Andy.


