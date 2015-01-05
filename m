Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8D197E00751; Mon,  5 Jan 2015 15:50:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AE42E003E3
	for <yocto@yoctoproject.org>; Mon,  5 Jan 2015 15:50:41 -0800 (PST)
Received: from [99.240.204.5] (port=39592 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1Y8HPy-0006E1-BJ; Mon, 05 Jan 2015 18:50:38 -0500
Date: Mon, 5 Jan 2015 18:50:36 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <3248018.f3JnKqDr81@peggleto-mobl5.ger.corp.intel.com>
Message-ID: <alpine.LFD.2.11.1501051850180.10461@localhost>
References: <alpine.LFD.2.11.1501051048230.20527@localhost>
	<3248018.f3JnKqDr81@peggleto-mobl5.ger.corp.intel.com>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH][yocto-docs] Mention yocto-layer subcommands add-layer, remove-layer.
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
X-List-Received-Date: Mon, 05 Jan 2015 23:50:44 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 5 Jan 2015, Paul Eggleton wrote:

> Hi Robert,
>
> On Monday 05 January 2015 10:50:07 Robert P. J. Day wrote:
> > Signed-off-by: Robert P. J. Day <rpjday@crashcourse.ca>
> >
> > ---
> >
> > diff --git a/documentation/dev-manual/dev-manual-common-tasks.xml
> > b/documentation/dev-manual/dev-manual-common-tasks.xml index
> > 0085cef..adaf602 100644
> > --- a/documentation/dev-manual/dev-manual-common-tasks.xml
> > +++ b/documentation/dev-manual/dev-manual-common-tasks.xml
> > @@ -705,6 +705,12 @@
> >                          Lists dependency relationships between recipes that
> > cross layer boundaries.
> >                          </para></listitem>
> > +
> > <listitem><para><filename><emphasis>add-layer:</emphasis></filename> +
> >                   Adds a layer to bblayers.conf.
> > +                        </para></listitem>
> > +
> > <listitem><para><filename><emphasis>remove-layer:</emphasis></filename> +
> >                      Removes a layer from bblayers.conf.
> > +                        </para></listitem>
> >
> > <listitem><para><filename><emphasis>flatten:</emphasis></filename> Flattens
> > the layer configuration into a separate output directory.
>
> Thanks - however I think you mean bitbake-layers rather than yocto-layer.

   arrrrggghhhhh ...

rday

