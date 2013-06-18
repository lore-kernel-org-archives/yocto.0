Return-Path: <gary@mlbassoc.com>
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FAD4E01493
	for <yocto@yoctoproject.org>; Tue, 18 Jun 2013 09:41:02 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 3E9FB68A01C; Tue, 18 Jun 2013 17:41:01 +0100 (BST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	loki.analogue-micro-ltd.com
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=5.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.12.145] (unknown [192.168.12.145])
	by mail.analogue-micro.com (Postfix) with ESMTP id 47DCF68A019;
	Tue, 18 Jun 2013 17:41:00 +0100 (BST)
Message-ID: <51C08D9C.6010405@mlbassoc.com>
Date: Tue, 18 Jun 2013 17:41:00 +0100
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAGxOggHpJNSb6vetbD40+ww-iyVxS3cUaZVhOF1t_OFCfQ4zSw@mail.gmail.com>
	<51BF484F.9070009@mlbassoc.com>
	<CAGxOggHuW93fygtGt037LLX1PFzgGzqDr3au1GV76hAaSnka6w@mail.gmail.com>
	<CAGX3a98bY4yx21Wj8ciSeDcz_=ew+6Zvn1+Ciwm-ou8a_MF48A@mail.gmail.com>
	<CAGxOggFiUojWMpYUd7J0BfpRhPnwbu+pH89p9CEkjdDjRs6BgQ@mail.gmail.com>
In-Reply-To: <CAGxOggFiUojWMpYUd7J0BfpRhPnwbu+pH89p9CEkjdDjRs6BgQ@mail.gmail.com>
Subject: Re: Yocto Layers not getting recognized by bitbake
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
X-List-Received-Date: Tue, 18 Jun 2013 16:41:03 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-06-18 17:28, varun bhatnagar wrote:
> I am building one of my application using yocto by giving bitbake -k core-image-minimal command but I am facing some errors as this application requires two libraries
> *1) net-snmp*
> *2) fuse*
> *
> *
> I have one link where in they are asking to add these two libraries in the form of layers and then execute bitbake -k core-image-minimal command.
>
> I am pasting one screenshot below:
>
> As you can I have added two layers meta-networking (contains net-snmp) and meta-oe(contains fuse). After this I added these layers in *build/conf/bblayer.conf.*
> *
> *
> *
> *
> After this I again executed bitbake -k core-image-minimal command but I faced the same error as before... :(
> Is there anyway that these layers get recognized? Do I need to execute some other command?

Obviously, this is a recipe that you made.

Does it show these dependencies?  e.g. a line like this in your recipe file:
   DEPENDS = "net-snmp fuse"
(or whatever the *packages* that you need are)

Bitbake can't read your mind; it will only build the recipes you ask and the
dependencies which are explicitly specified in that build chain.

If you still have trouble, try sending your recipe (.bb file and all other
components you might have), bblayers.conf, etc to the list because we're not
mind readers either :-)

>
> On Tue, Jun 18, 2013 at 2:32 AM, Sudhangathan B S <sudhangathan@gmail.com <mailto:sudhangathan@gmail.com>> wrote:
>
>     Can you please paste your command and it's output here..! If you don't mind..!! Or explain with equivalent clarity. It
>     l will good if you can also put in your directory structure.
>
>     ---------------------------------
>     Sudhangathan BS
>     Ph:(+91) 9731-905-205
>     ---------------------------------
>
>
>     On Mon, Jun 17, 2013 at 11:33 PM, varun bhatnagar <varun292006@gmail.com <mailto:varun292006@gmail.com>> wrote:
>
>         Actually the package which I am building is having some dependencies on some libraries. So I provided those libraries with the help of creating layers. I did not extract
>         those from meta-openembedded, instead, I manually created two layers and added them in bblayer.conf file. Now, after configuring all this stuff I am again trying to
>         recompile my code but still I am getting the same error saying that it is not able to find those libraries provided by me in the form of layers.
>
>
>         On Mon, Jun 17, 2013 at 11:03 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>             On 2013-06-17 18:08, varun bhatnagar wrote:
>
>                 Hi,
>
>                 I am trying to compile my code using yocto. For that I have created two layers: "meta-networking" and "meta-oe". I have added these dependencies in bblayer.conf
>                 too. But these are
>                 not getting build. Can anyone please tell me what should I do to make this work.
>
>
>             More details are needed to be able to help.
>
>             What do you mean "not getting built"?  Do you mean that if you
>             try to build recipe XYZ which is in one of those layers that it's
>             not being built?  Or perhaps you mean something else?
>
>             What do you mean "created two layers: ..."?  Did you just extract
>             these from meta-openembedded?  or something else?
>
>             --
>             ------------------------------__------------------------------
>             Gary Thomas                 |  Consulting for the
>             MLB Associates              |    Embedded world
>             ------------------------------__------------------------------
>             _________________________________________________
>             yocto mailing list
>             yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>             https://lists.yoctoproject.__org/listinfo/yocto <https://lists.yoctoproject.org/listinfo/yocto>
>
>
>
>         _______________________________________________
>         yocto mailing list
>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>         https://lists.yoctoproject.org/listinfo/yocto
>
>
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

