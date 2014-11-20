Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8DA2AE008F6; Thu, 20 Nov 2014 07:21:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5ECAE008F2
	for <yocto@yoctoproject.org>; Thu, 20 Nov 2014 07:21:37 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sAKFFrS8016586; Thu, 20 Nov 2014 15:15:53 GMT
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id G67_gnK9zkFE; Thu, 20 Nov 2014 15:15:53 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	sAKFFePe016581
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 20 Nov 2014 15:15:52 GMT
Message-ID: <1416496577.2068.3.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Jens Rehsack <rehsack@gmail.com>, =?ISO-8859-1?Q?An=EDbal_Lim=F3n?=
	<anibal.limon@linux.intel.com>
Date: Thu, 20 Nov 2014 15:16:17 +0000
In-Reply-To: <37719788-60D1-4C79-BCC4-4F4FA3DFDEB1@gmail.com>
References: <20141027080733.D8D1F380909@gemini.denx.de>
	<1415215791-27197-1-git-send-email-wd@denx.de>
	<CAJTo0Lbd4JcvuipFTGDu_3c1kyQDO49gxfp59QwjzFW=618jhQ@mail.gmail.com>
	<37719788-60D1-4C79-BCC4-4F4FA3DFDEB1@gmail.com>
X-Mailer: Evolution 3.12.7-0ubuntu1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [PATCH] Perl: fix PERL5LIB settings
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
X-List-Received-Date: Thu, 20 Nov 2014 15:21:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Sat, 2014-11-08 at 13:47 +0100, Jens Rehsack wrote:
> Am 07.11.2014 um 12:55 schrieb Burton, Ross <ross.burton@intel.com>:
> 
> > Hi Wolfgang,
> > 
> > On 5 November 2014 19:29, Wolfgang Denk <wd@denx.de> wrote:
> >  meta/recipes-devtools/perl/perl-native_5.14.3.bb | 4 ++--
> >  meta/recipes-devtools/perl/perl_5.14.3.bb        | 2 +-
> >  2 files changed, 3 insertions(+), 3 deletions(-)
> > 
> > Perl was upgraded to 5.20.0 in July, can you rebase and verify that this is still required?
> 
> I can finally confirm that it fixes the issues in daisy (bitbaking Dancer2 using https://github.com/rehsack/meta-cpan/tree/master/recipes-www/dancer2-perl).
> You can try whether Dancer2 bitbakes for dizzy and/or master to verify - for me it's impossible to create a dizzy build - to many daisy adoptions and release pressure for next weeks.
> If you know someone having dizzy - bitbake Dancer2, Unix::Statgrab or alike to prove ...

I was asked why this patch hasn't gone in. I agree there is a problem
here which needs fixing. The trouble is that it doesn't easily apply to
master, we don't have many perl experts to review this and patches
against oe-core really need to go to the openembedded-core mailing list.

I believe Aníbal did fix part of the problem with:

http://git.yoctoproject.org/cgit.cgi/poky/commit/?id=6839a39912d483c6a403bd52e5f889547f1f4807

which leaves the perl-native part. I don't normally do this however I've
updated the remaining part of the patch to apply against master and
included it in master-next since I hate to see things getting lost.

Cheers,

Richard



