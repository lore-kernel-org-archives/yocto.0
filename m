Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6CBBEE00998; Wed, 22 Apr 2015 23:49:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f173.google.com (mail-pd0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A31AE008DC
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2015 23:49:44 -0700 (PDT)
Received: by pdbqa5 with SMTP id qa5so10370483pdb.1
	for <yocto@yoctoproject.org>; Wed, 22 Apr 2015 23:49:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=vTgW9hrq+tXB1I1sLQ/pSs/i6nUr7gw8aqkbIi8qxe8=;
	b=AKec22ploz6vSH7HR+Bu4x+VPawepbxvFW76FPpvyzAFUTljYOVAomcVAK19nMOLEy
	+gXdd1/iQ5Yx1qPjhLYKYIbRZQXhmXYe5ZCWNCvNoPbrcgeX2bZoCkP+3GUp21TFKPwe
	clAI5xhP3t0n5brdlRJO6YRtTPsjNh6CkW2HDsGuDAjlM31xPzTV1zL6WkmA75hKVIWE
	Irkeb6X0zKUshDlKHQZonjGNtqBr//JxsSrdhhKlur6dAiRbO6Gss1swwgsbVuQ65UY8
	oQKsTCW3LsL9TDU4+UEFsUiGIQDyo/4mPDSyomgfw60XjLS6zVHspJMp73SMjeN5gEvQ
	q7nw==
X-Received: by 10.66.242.79 with SMTP id wo15mr2650877pac.6.1429771783743;
	Wed, 22 Apr 2015 23:49:43 -0700 (PDT)
Received: from [192.168.0.13] (c-76-103-142-85.hsd1.ca.comcast.net.
	[76.103.142.85])
	by mx.google.com with ESMTPSA id oh2sm6965673pbb.45.2015.04.22.23.49.42
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Wed, 22 Apr 2015 23:49:42 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 8.2 \(2098\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <1508758.Rhv2PmRKWu@peggleto-mobl.ger.corp.intel.com>
Date: Wed, 22 Apr 2015 23:49:41 -0700
Message-Id: <F77E520E-C779-436E-B54F-F34D4D4561BE@gmail.com>
References: <BLUPR0501MB1028D6037F60D05E868A5F15BFEE0@BLUPR0501MB1028.namprd05.prod.outlook.com>
	<1674505.cjWkHk81xC@peggleto-mobl.ger.corp.intel.com>
	<BLUPR0501MB102866C5EB58E5A59367E3D8BFEE0@BLUPR0501MB1028.namprd05.prod.outlook.com>
	<1508758.Rhv2PmRKWu@peggleto-mobl.ger.corp.intel.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.2098)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: creating images which include actively developed applications
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
X-List-Received-Date: Thu, 23 Apr 2015 06:49:47 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Paul

> On Apr 22, 2015, at 4:22 PM, Paul Eggleton =
<paul.eggleton@linux.intel.com> wrote:
>=20
> On Wednesday 22 April 2015 20:51:08 Brian Karcz wrote:
>> Thanks for pointing me to that. It sounds like exactly what I need. I =
can't
>> believe that I've not come across that in my searches. I suppose its =
a
>> matter of using the right search criteria.
>=20
> So I do want to mention one thing - we envisaged externalsrc more for=20=

> situations where you temporarily want to build from an external source =
tree=20
> (for example, when you're in the middle of development). The =
expectation is=20
> that when you reach production you switch over to a standard =
repository=20
> specified in SRC_URI. Having said that there aren't any actual =
barriers to=20
> using it on a more permanent basis as it sounds like you may  be =
considering=20
> (although perhaps I've misunderstood.)

Application development doesn=E2=80=99t end is what really happens, so =
developers will need to keep
using something like this forever on a given application, and somehow =
externalsrc sounds
temporary i.e. not included into regular workflow.

>=20
>> 2) can the SRC_URI now be omitted in the recipe since there is =
nothing to
>> fetch?=20
>=20
> You can leave it completely blank if you wish. In dizzy and earlier, =
SRC_URI=20
> is effectively ignored with externalsrc. In master and the =
just-released fido=20
> release, any local file:// references will still be fetched if =
present, remote=20
> URIs will be ignored.

Will they be just fetched or also applied to source tree like in =
non-externalsrc case.
getting a  'prepared source tree' in an externalsrc env is a big =
confusion point for developers
where a given component is building totally fine and if one want to use =
externalsrc then developer
needs to do =E2=80=98preparation of source tree=E2=80=99, so it seems =
post 1.7 we have something inbetween solution ?


