Return-Path: <jrswdnan22@snkmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8750CE00B30; Wed, 25 Apr 2018 03:27:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.197.172.115 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from gw01.mail.saunalahti.fi (gw01.mail.saunalahti.fi
	[195.197.172.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 87BAFE00B01
	for <yocto@yoctoproject.org>; Wed, 25 Apr 2018 03:27:17 -0700 (PDT)
Received: from linux.suse (91-157-45-43.elisa-laajakaista.fi [91.157.45.43])
	by gw01.mail.saunalahti.fi (Postfix) with ESMTP id CE093402AF;
	Wed, 25 Apr 2018 13:27:13 +0300 (EEST)
From: Uwe Geuder <jrswdnan22@snkmail.com>
To: yocto@yoctoproject.org
In-Reply-To: <87zi1rd96y.fsf@linux.suse>
References: <trinity-585ed3de-1ab2-499a-8c01-9c534c62338e-1524593071984@3c-app-gmx-bs52>
	<87zi1rd96y.fsf@linux.suse>
Date: Wed, 25 Apr 2018 13:27:13 +0300
Message-ID: <87wowvd1j2.fsf@linux.suse>
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
X-List-Received-Date: Wed, 25 Apr 2018 10:27:19 -0000
Content-Type: text/plain

Correcting myself...

On Wed, Apr 25, 2018 at 10:41 AM, Uwe Geuder <jrswdnan22@snkmail.com> wrote:
[...]
>
> Bitbake uses Python. To make things more confusing the locales in Python
> are not necessarily named the same way as in your underlying distro and
> there can be aliases.
>
> In the end this code needs to run without returning an error
>
> $ python
> >>> import locale
> >>> locale.setlocale(locale.LC_ALL, "en_US.UTF-8")
> 'en_US.UTF-8'
>

The command should have been python3.

Should not make a difference here, but that's what we have said before...

Regards,

Uwe Geuder
Neuro Event Labs Oy
Tampere, Finland
uwe.gexder at neuroeventlabs.com (Bot check: fix one obvious typo)

