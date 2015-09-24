Return-Path: <andy.pont@sdcsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2877E00E21; Thu, 24 Sep 2015 09:21:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,MSGID_MULTIPLE_AT,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * 1.0 MSGID_MULTIPLE_AT Message-ID contains multiple '@'
	characters
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.40.44.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtprelay.hostedemail.com (smtprelay0171.hostedemail.com
	[216.40.44.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66A77E00306
	for <yocto@yoctoproject.org>; Thu, 24 Sep 2015 09:21:46 -0700 (PDT)
Received: from filter.hostedemail.com (unknown [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 25330C2138;
	Thu, 24 Sep 2015 16:21:46 +0000 (UTC)
X-Session-Marker: 616E64792E706F6E744073646373797374656D732E636F6D
X-HE-Tag: lake45_669fd4daf260d
X-Filterd-Recvd-Size: 1972
Received: from sdcapont (unknown [5.133.41.213])
	(Authenticated sender: andy.pont@sdcsystems.com)
	by omf11.hostedemail.com (Postfix) with ESMTPA;
	Thu, 24 Sep 2015 16:21:45 +0000 (UTC)
From: "Andy Pont" <andy.pont@sdcsystems.com>
To: "'Rudolf J Streif'" <rudolf.streif@gmail.com>,
	<yocto@yoctoproject.org>
References: <5603f9ce.e9d1440a.dc3ac.43adSMTPIN_ADDED_BROKEN@mx.google.com>
	<CAF3SDA4j6h=5btgBtVVdxwFwR+eT+SdtmYXk7Wd9mrXk9WyL5g@mail.gmail.com>
	<CAF3SDA7LLcZP5D8Tr7=fZ+xsBK2DbW8GtKVi4SVng-dPnuog2g@mail.gmail.com>
	<7720054.5AybCaxdE3@rjs-mbpro.streifs.net>
In-Reply-To: <7720054.5AybCaxdE3@rjs-mbpro.streifs.net>
Date: Thu, 24 Sep 2015 17:21:41 +0100
Organization: SDC Systems Limited
Message-ID: <009301d0f6e5$197dc180$4c794480$@pont@sdcsystems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 12.0
Thread-Index: AdD23BKoIR7ijfuiTPaq1nXdUBwM2AACJfyw
Subject: Re: Setting root password
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
X-List-Received-Date: Thu, 24 Sep 2015 16:21:48 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-gb

Rudi wrote=85

> > Still, I think is a good ideia to understand what is going wrong =
with
> > EXTRA_USERS_PARAMS, other users may having the same problem.
>
> EXTRA_USERS_PARAMS works for me all the time. The stanza is what I am
using=20
> in my image recipes:
>=A0
> EXTRA_USERS_PARAMS =3D "\
> groupadd developers; \
> useradd -p `openssl passwd ${DEV_PASSWORD}` developer; \
> useradd -g developers developer; \
> usermod -p `openssl passwd ${ROOT_PASSWORD}` root; \
>"
>
> If this is an accurate copy of what you are using
>
> EXTRA_USERS_PARAMS =3D "usermod -P <encrypted_password> root;"
>
> then the issue probably is the capital -P. It should be lowercase.

Good spot.  I copied and pasted it from an article I found on the web!
Having changed it to lower case it now works as expected!

Thanks,

Andy.


