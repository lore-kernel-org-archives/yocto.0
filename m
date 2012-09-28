Return-Path: <blloyd@familyhonor.net>
Received: from mho-01-ewr.mailhop.org (mho-03-ewr.mailhop.org [204.13.248.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC52DE01346
	for <yocto@yoctoproject.org>; Fri, 28 Sep 2012 14:40:59 -0700 (PDT)
Received: from [98.142.68.244] (helo=lloydserv.familyhonor.net)
	by mho-01-ewr.mailhop.org with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.72) (envelope-from <blloyd@familyhonor.net>)
	id 1THiIq-000GVB-S6; Fri, 28 Sep 2012 21:40:57 +0000
Received: from [192.168.0.30] ([98.142.68.244]) (authenticated bits=0)
	by lloydserv.familyhonor.net (8.14.5/8.14.5) with ESMTP id
	q8SLer65024105
	(version=TLSv1/SSLv3 cipher=DHE-RSA-CAMELLIA256-SHA bits=256 verify=NO);
	Fri, 28 Sep 2012 16:40:53 -0500
X-Mail-Handler: Dyn Standard SMTP by Dyn
X-Originating-IP: 98.142.68.244
X-Report-Abuse-To: abuse@dyndns.com (see
	http://www.dyndns.com/services/sendlabs/outbound_abuse.html for
	abuse reporting information)
X-MHO-User: U2FsdGVkX1/3TwOSMRAm9mfOHmlo5dRn3ct3t6dRkXM=
Message-ID: <1348868453.22465.8.camel@omclinuxballt.devnet.ordermatic.net>
From: Brian Lloyd <blloyd@familyhonor.net>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Date: Fri, 28 Sep 2012 16:40:53 -0500
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A73136@FMSMSX151.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A720D0@FMSMSX151.amr.corp.intel.com>
	<CA+gsK-pYtXKaVyERW7ys9j_3DEExXUKf2=wNTOOQ+r-Jvt9xrQ@mail.gmail.com>
	<31384487.oKEco2inpj@helios>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A73111@FMSMSX151.amr.corp.intel.com>
	<CA+gsK-qgU=6MHF4T+U1uU1qjVOGBq6pVsbbrTvwZUnYcBeBy=g@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A73136@FMSMSX151.amr.corp.intel.com>
X-Mailer: Evolution 3.4.4 (3.4.4-1.fc17) 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: The term Package as used in the YP docs
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
X-List-Received-Date: Fri, 28 Sep 2012 21:41:00 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

From the perspective of a new, easily confused and overwhelmed user, I
whole heartedly agree with the index entry.  And now it makes sense why
there is a PV to store version of a recipe.


On Fri, 2012-09-28 at 18:46 +0000, Rifenbark, Scott M wrote:
> Rudolf, 
> 
>  
> 
> This is good feedback on the descriptions for the variable names
> Rudolf.  I did try and clean things up there a bit. 
> 
>  
> 
> Thanks,
> 
> Scott
> 
>  
> 
> From: rstreif@linuxfoundation.org [mailto:rstreif@linuxfoundation.org]
> On Behalf Of Rudolf Streif
> Sent: Friday, September 28, 2012 11:45 AM
> To: Rifenbark, Scott M
> Cc: Paul Eggleton; yocto@yoctoproject.org
> Subject: Re: [yocto] The term Package as used in the YP docs
> 
> 
>  
> 
> I am not advocating changing the variable names. I know that this is a
> huge undertaking and prone to many problems. This probably one of the
> many legacy things people will have to live with and understand. In
> most cases recipe name and version exactly reflect the name and
> version of the package it is intended to build which to some extend
> mitigates the issue.
> 
>  
> 
> 
> As far as the Terms section in the manuals is concerned, I see that
> you already changed the describing text for the variables. That's
> sufficient, I think.
> 
> 
>  
> 
> 
> :rjs
> 
> On Fri, Sep 28, 2012 at 11:37 AM, Rifenbark, Scott M
> <scott.m.rifenbark@intel.com> wrote:
> 
> I have tried to weed out the ambiguous use of "package" for this
> upcoming version of the manual set.  I don't think I would want to
> suggest changing any of the "P*" type variable names in the code.  I
> agree with Paul here that the potential for really messing things up
> out-weighs any other benefit.  This is why I was trying to worm in a
> bit of history behind those names for the people that might struggle
> like me.
> 
> Scott
> 
> 
> -----Original Message-----
> From: yocto-bounces@yoctoproject.org
> [mailto:yocto-bounces@yoctoproject.org] On Behalf Of Paul Eggleton
> Sent: Friday, September 28, 2012 11:34 AM
> To: Rudolf Streif
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] The term Package as used in the YP docs
> 
> 
> On Friday 28 September 2012 11:27:37 Rudolf Streif wrote:
> > +1
> >
> > I agree with Scott's definition. In the general Linux context a
> Package is
> > a compilation of binaries, documentation, development files, etc.
> wrapped
> > up in a format that can be used by a package management system to
> install
> > it on a target system.
> 
> No dispute there.
> 
> > It is somewhat confusing that YP and OE use the term 'package'
> synonymously
> > with 'recipe'. In most cases a package is the output of a recipe.
> 
> The thing is, we no longer do that - we've fixed a number of
> references in the
> documentation, help text and error messages for this release so that
> "recipe"
> is used when that's what we mean. If we've left any references that
> should be
> considered a bug.
> 
> > Unfortunately, changing variables like P, PN, PV, PR etc.
> > may cause some pain. If a transition is what the broader community
> would
> > like to achieve then a period where old and new variables can be
> used
> > interchangeably (if possible) would be the way to go.
> 
> I'm not sure there's a huge amount to be gained by doing this when
> weighed
> against the cost - it would certainly cause a massive amount of churn,
> with
> the potential for problems with layer interaction where one layer has
> done the
> big rename and another that bbappends recipes in the first hasn't.
> 
> Cheers,
> Paul
> 
> --
> 
> Paul Eggleton
> Intel Open Source Technology Centre
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
> 
> 
>  
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



