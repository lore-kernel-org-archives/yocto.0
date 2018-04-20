Return-Path: <jrswdnan22@snkmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0E5DFE00C74; Fri, 20 Apr 2018 05:26:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [62.142.5.116 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from emh06.mail.saunalahti.fi (emh06.mail.saunalahti.fi
	[62.142.5.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C34DEE00C58
	for <yocto@yoctoproject.org>; Fri, 20 Apr 2018 05:26:35 -0700 (PDT)
Received: from uwe1 (85-76-108-172-nat.elisa-mobile.fi [85.76.108.172])
	by emh06.mail.saunalahti.fi (Postfix) with ESMTP id 31C043008B;
	Fri, 20 Apr 2018 15:26:33 +0300 (EEST)
From: Uwe Geuder <jrswdnan22@snkmail.com>
To: yocto@yoctoproject.org
In-Reply-To: <5ad9c6a8.08aa370a.e3f10.cf1eSMTPIN_ADDED_BROKEN@mx.google.com>
References: <CAALXFYy3uftzYmjyYaJ+-X0OAPu8XJ2C7wNBMnoYZYHkm+Gp2g@mail.gmail.com>
	<CAALXFYy3uftzYmjyYaJ+-X0OAPu8XJ2C7wNBMnoYZYHkm+Gp2g@mail.gmail.com>
Date: Fri, 20 Apr 2018 15:26:32 +0300
Message-ID: <87efja6p3b.fsf@snkmail.com>
MIME-Version: 1.0
Subject: Re: Usage of yocto on different (production vs debug) scenarios
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
X-List-Received-Date: Fri, 20 Apr 2018 12:26:37 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Following up on my own message...

On Fri, Apr 20, 2018 at 1:47 PM, Uwe Geuder <jrswdnan22snkmail.com> wrote:

> On Fri, Apr 20, 2018 at 10:59 AM, Iv=C3=A1n Castell <icastell@nayarsystem=
s.com> wrote:
>
[...]
>> However, things are getting complicated, because there is no way to
>> exclude some recipes easily. For example, we don't want iptables
>> installed on the debug image, but dependency chains include iptables
>> by default
>
> Doesn't blacklist do what you want?
>
> E.g. in your distro-production.conf
>
> PNBLACKLIST[iptables] =3D "we don't want iptables in product"
>

As recently mentioned in another thread on this list there is also
BBMASK.

https://lists.yoctoproject.org/pipermail/yocto/2018-April/040861.html

I don't know what would be the suitable/most idiomatic use cases for
PNBLACKLIST vs. BBMASK

Regards,

Uwe Geuder
Neuro Event Labs Oy
Tampere, Finland
uwe.gexder@neuroeventlabs.com (Bot check: fix one obvious typo)



