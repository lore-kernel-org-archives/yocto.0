Return-Path: <jrswdnan22@snkmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9453DE00C12; Tue, 30 Oct 2018 06:14:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [62.142.5.109 listed in list.dnswl.org]
Received: from emh03.mail.saunalahti.fi (emh03.mail.saunalahti.fi
	[62.142.5.109])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A267E00BD0
	for <yocto@yoctoproject.org>; Tue, 30 Oct 2018 06:14:39 -0700 (PDT)
Received: from uwe1 (unknown [193.65.204.42])
	by emh03.mail.saunalahti.fi (Postfix) with ESMTP id A4D524037D;
	Tue, 30 Oct 2018 15:14:36 +0200 (EET)
From: Uwe Geuder <jrswdnan22@snkmail.com>
To: yocto@yoctoproject.org
In-Reply-To: <AM5PR0602MB2802B8C31D3325291398D156B1F00@AM5PR0602MB2802.eurprd06.prod.outlook.com>
References: <AM5PR0602MB2802B8C31D3325291398D156B1F00@AM5PR0602MB2802.eurprd06.prod.outlook.com>
Date: Tue, 30 Oct 2018 15:14:36 +0200
Message-ID: <87bm7bfuf7.fsf@snkmail.com>
MIME-Version: 1.0
Subject: Re: Moving to Yocto 2.3 - recipe-specific sysroots - improving the documentation
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
X-List-Received-Date: Tue, 30 Oct 2018 13:14:40 -0000
Content-Type: text/plain

On Tue, Oct 30, 2018 at 9:05 AM CHMIELARZ Radoslaw radoslaw.chmielarz-at-leica-geosystems.com wrote:
>
> Hi all,
>
>  
>
> I think the documentation on migrating between Yocto 2.2 and 2.3 needs
> more clarification as to how did the sysroots have changed.
>
[...]
>  
>
> Now when trying to migrate I have noticed that STAGING_DIR is not
> populated any more and this is clearly explained by the
> documentation. What is not explained however is how to get the files
> from other recipes. The documentation simply states that each recipe
> has its own staging directory.
[...]

Have you seen this chapter?

https://www.yoctoproject.org/docs/2.5.1/mega-manual/mega-manual.html#new-sharing-files-between-recipes

(well, that's not 2.3 but the newest one, but I am not aware that
anything significant has changed once more)

The headline promises to answer the question, but at least I don't fully
follow the explanations. They are talking about *the* sysroot. As we
know sysroots are recipe-specifc now. So if we are talking about sharing
files between recipes, we have an "exporting" recipe and an "importing"
recipe, so at least in theory 2 sysroots could be involved. From the
text in the manual I do not understand which one they mean and what they
try to explain.

So yes, I agree that the documentation should be clarified. Unfortunatly
I am not in the situation to suggest the solution.

Regards,

Uwe Geuder
Neuro Event Labs Oy
Tampere, Finland
uwe.gexder at neuroeventlabs.com (Bot check: fix one obvious typo)

