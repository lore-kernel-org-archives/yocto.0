Return-Path: <belen.barros.pena@intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FD39E00746
	for <yocto@yoctoproject.org>; Mon, 11 Jun 2012 02:31:25 -0700 (PDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 11 Jun 2012 02:31:25 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="164063516"
Received: from irsmsx101.ger.corp.intel.com ([163.33.3.153])
	by fmsmga001.fm.intel.com with ESMTP; 11 Jun 2012 02:31:24 -0700
Received: from irsmsx104.ger.corp.intel.com ([169.254.5.248]) by
	IRSMSX101.ger.corp.intel.com ([169.254.1.68]) with mapi id
	14.01.0355.002; Mon, 11 Jun 2012 10:30:52 +0100
From: "Barros Pena, Belen" <belen.barros.pena@intel.com>
To: Joshua Lock <josh@linux.intel.com>
Thread-Topic: [yocto] Hob implementation: vanilla or branded?
Thread-Index: AQHNR7TkxYgPrpNQIUKkmNG3dsoFAw==
Date: Mon, 11 Jun 2012 09:30:51 +0000
Message-ID: <CBFB7925.10ABF%belen.barros.pena@intel.com>
In-Reply-To: <4FD22B4B.3050206@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.2.2.120421
x-originating-ip: [10.252.39.76]
MIME-Version: 1.0
Cc: "Lock, Joshua" <joshua.lock@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hob implementation: vanilla or branded?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 11 Jun 2012 09:31:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <1F0ADF61773352468C9ED1D3A10A9455@intel.com>
Content-Transfer-Encoding: quoted-printable

Thanks, Joshua.

Belen

On 08/06/2012 17:41, "Joshua Lock" <josh@linux.intel.com> wrote:

>On 08/06/12 07:28, Barros Pena, Belen wrote:
> > Vanilla 5 - branded 0 :)
> >
> > Shane, Dongxiao and Alex: from an implementation point of view, I guess
> > this means eliminating any hardcoded UI-related values (button
>colours and
> > styles, for example). Joshua: if you have a rough idea of the things
>that
> > will need to be changed from the work you did before the 1.2 release,
> > please let us know.
>
>I have a link to an old article that suggests techniques for getting
>colours from the GTK+ theme:
>
>http://ometer.com/gtk-colors.html
>
>It's pretty old but I believe the GTK+2 pieces are still appropriate for
>Hob.
>
>On top of that using gtk.Table is bad, using hard coded sizes for text,
>widgets, etc. is bad.
>
>Pango markup supports proportional font sizes (large, larger) like CSS
>and I'd suggest those be used.
>
>I think we should keep the existing icons, though.
> > What do you think?
>
>I'm definitely in favour of that.
>
>Cheers,
>Joshua
>--=20
>Joshua Lock
>         Yocto Project
>         Intel Open Source Technology Centre

---------------------------------------------------------------------
Intel Corporation (UK) Limited
Registered No. 1134945 (England)
Registered Office: Pipers Way, Swindon SN3 1RJ
VAT No: 860 2173 47

This e-mail and any attachments may contain confidential material for
the sole use of the intended recipient(s). Any review or distribution
by others is strictly prohibited. If you are not the intended
recipient, please contact the sender and delete all copies.


