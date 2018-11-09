Return-Path: <jrswdnan22@snkmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7AAEE00A10; Fri,  9 Nov 2018 07:02:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [62.142.5.108 listed in list.dnswl.org]
Received: from emh02.mail.saunalahti.fi (emh02.mail.saunalahti.fi
	[62.142.5.108])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63FB6E00971
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2018 07:02:00 -0800 (PST)
Received: from uwe1 (unknown [193.65.204.42])
	by emh02.mail.saunalahti.fi (Postfix) with ESMTP id C63DA2005A;
	Fri,  9 Nov 2018 17:01:58 +0200 (EET)
From: Uwe Geuder <jrswdnan22@snkmail.com>
To: yocto@yoctoproject.org
In-Reply-To: <CAJTo0Lai9bbJeTgtwOvwB_jmNtfMGLj1PP2ywQdzee6ugNELaw@mail.gmail.com>
References: <MA1PR01MB2604734A613E22FAFAA2424A91C60@MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM>
	<MA1PR01MB2604847AB21F2309705B5AA091C60@MA1PR01MB2604.INDPRD01.PROD.OUTLOOK.COM>
	<CAJTo0Lai9bbJeTgtwOvwB_jmNtfMGLj1PP2ywQdzee6ugNELaw@mail.gmail.com>
Date: Fri, 09 Nov 2018 17:01:58 +0200
Message-ID: <87wopmz449.fsf@snkmail.com>
MIME-Version: 1.0
Subject: Re: so how does PACKAGECONFIG_remove really work?
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
X-List-Received-Date: Fri, 09 Nov 2018 15:02:01 -0000
Content-Type: text/plain

On Fri, Nov 9, 2018 at 4:41 PM Burton, Ross ross.burton-at-intel.com  wrote:
>
> On Fri, 9 Nov 2018 at 14:36, Aditya Tayade <Aditya.Tayade@kpit.com> wrote:
> > Can any one please help me to understand PACKAGECONFIG_remove feature
> >
> >
> > Let's take an example of systemd recipe as follows:
> >
> > PACKAGECONFIG ??= "vconsole"
> >
> > PACKAGECONFIG[vconsole] = "-Dvconsole=true,-Dvconsole=false,,${PN}-vconsole-setup"
> >
> >
> > Now how should we disable features set in PACKAGECONFIG[vconsole] using PACKAGECONFIG_remove from it's bbappend file?
>
> The _remove override removes a value from a variable. So this will
> remove 'vconsole' from the value of PACKAGECONFIG:
>
> PACKAGECONFIG_remove = "vconsole"
>

I also wondered quite a while in the past why such questions are not covered
by the Mega Manual.

https://www.yoctoproject.org/docs/2.5.1/mega-manual/mega-manual.html

Once I had been told that the mega manual contains "everything". As matter of
fact that is not true. Basic syntax for bitbake (recipes and conf files) is
documented only in a separate Bitbake User Manual.

https://www.yoctoproject.org/docs/2.5.1/bitbake-user-manual/bitbake-user-manual.html#removing-override-style-syntax

Regards,

Uwe Geuder
Neuro Event Labs Oy
Tampere, Finland
uwe.gexder@neuroeventlabs.com (Bot check: fix one obvious typo)

