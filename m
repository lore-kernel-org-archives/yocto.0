Return-Path: <jrswdnan22@snkmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C7C5E00B57; Wed, 25 Apr 2018 05:18:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.197.172.116 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from gw02.mail.saunalahti.fi (gw02.mail.saunalahti.fi
	[195.197.172.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 673D8E00B01
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 05:18:30 -0700 (PDT)
Received: from linux.suse (91-157-45-43.elisa-laajakaista.fi [91.157.45.43])
	by gw02.mail.saunalahti.fi (Postfix) with ESMTP id A5F1B400DB;
	Wed, 25 Apr 2018 15:18:25 +0300 (EEST)
From: Uwe Geuder <jrswdnan22@snkmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
In-Reply-To: <CAJTo0LZZo3Cy82z1c8ZnVwR9LL-9+dEuFhzELk=v+A8HhHveBw@mail.gmail.com>
References: <trinity-585ed3de-1ab2-499a-8c01-9c534c62338e-1524593071984@3c-app-gmx-bs52>
	<CAJTo0LZZo3Cy82z1c8ZnVwR9LL-9+dEuFhzELk=v+A8HhHveBw@mail.gmail.com>
Date: Wed, 25 Apr 2018 15:18:25 +0300
Message-ID: <87tvrzcwdq.fsf@linux.suse>
MIME-Version: 1.0
Subject: Re: building recipe with buildtools, causes sanity error: Your system needs to support the en_US.UTF-8 locale.
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
X-List-Received-Date: Wed, 25 Apr 2018 12:18:31 -0000
Content-Type: text/plain

On Wed, Apr 25, 2018 at 1:48 PM, Burton, Ross <ross.burton@intel.com> wrote:
> So my hunch is that you've a modern system with glibc 2.27 on the
> host, so that old buildtools won't work.  Try this buildtools:
>
> http://downloads.yoctoproject.org/releases/yocto/milestones/yocto-2.5_M3/buildtools/

Ah, buildtools come with their own locale. 

So my previous message was probably not applicable for users of
buildtools. Sorry about the noise!

Regards,

Uwe Geuder
Neuro Event Labs Oy
Tampere, Finland
uwe.gexder at neuroeventlabs.com (Bot check: fix one obvious typo)

