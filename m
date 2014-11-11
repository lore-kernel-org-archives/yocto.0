Return-Path: <opensourcejohn2112@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02F9CE008DC; Tue, 11 Nov 2014 07:46:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,
	URIBL_DBL_ABUSE_REDIR,URIBL_DBL_REDIR autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (opensourcejohn2112[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* 0.0 URIBL_DBL_ABUSE_REDIR Contains an abused redirector URL listed in
	*      the DBL blocklist *      [URIs: goo.gl]
	*  0.0 URIBL_DBL_REDIR Contains a URL listed in the DBL as a spammed
	*      redirector domain *      [URIs: goo.gl]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 20069E00874
	for <yocto@yoctoproject.org>; Tue, 11 Nov 2014 07:46:20 -0800 (PST)
Received: by mail-oi0-f54.google.com with SMTP id a141so7185606oig.13
	for <yocto@yoctoproject.org>; Tue, 11 Nov 2014 07:46:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=Fh9ov87ic9FtRYZrOfhZcECeB+M9vzkSymtkz8H1t6A=;
	b=slYRVnNia3VkAwiQrgO8wMxumqtCTkeCGSvrpATqvGYooVAIcudt8phOhBTe0QVoaF
	56g7FLz/BcxC0pIg0SWdUsEZu5ffj15PtsN75cOj08sJX2LKqYK3qKB1CgcXBew/UAgD
	Z8aZynIqZgGuLaLUlouF+6RqYblF9b2XOf5/fxDKyOk3Ej1uu0x74QME3o+aSOQ/QBFa
	b9n44hEhgSigyL0nMdv288xjk+gvQ0U0YWk4Zz7QVs3rS7ntx1gsKnIiYip/mMumUoF3
	WCxzppjNjcQj4RXhIWedZkL3cXM4n2sjBCJJmFwmO4OR6g5QIJPE9fIwPlVCfpRA1IfI
	nRfg==
MIME-Version: 1.0
X-Received: by 10.182.118.167 with SMTP id kn7mr449497obb.85.1415720780019;
	Tue, 11 Nov 2014 07:46:20 -0800 (PST)
Received: by 10.202.104.196 with HTTP; Tue, 11 Nov 2014 07:46:19 -0800 (PST)
In-Reply-To: <D087C161.4DC2F%belen.barros.pena@intel.com>
References: <CAByxTR_jmYDr4QUAtXg20UBV_FXZ-yUk=WEJ3LTA1wkaRAx6Yw@mail.gmail.com>
	<D08793BD.4DAD5%belen.barros.pena@intel.com>
	<4b71e65f9d0949928a7575be01750a68@BN1PR0301MB0641.namprd03.prod.outlook.com>
	<D087C161.4DC2F%belen.barros.pena@intel.com>
Date: Tue, 11 Nov 2014 09:46:19 -0600
Message-ID: <CAByxTR-TLaK2NSwctbqH2rpTx9Lvhj_b3h32oYb1otfbV_inOA@mail.gmail.com>
From: John Unland <opensourcejohn2112@gmail.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Richard Schmitt <richard.schmitt@freescale.com>
Subject: Re: Making Hob better.
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
X-List-Received-Date: Tue, 11 Nov 2014 15:46:29 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

>It is great to see so much interest in Hob: for a while we thought nobody
>was using it!

I do see the potential for toaster as wel (Forgot to mention it). Yes
I do see in the near future Hob being phased out in later releases.
But for what it is right now, there are people using it, I really
think it's a great idea to have something like hob for embedded
systems espically the Hobbyist crowd.

>A kernel configuration module for Toaster is something that we'd like to
>see at some point. And the branding one I agree it would be great to have.
>Feel free to open Bugzilla entries for both.

Under what catagories would these two be filed under?

>Contributions are very welcome! :) You can get involved in both
>development and QA work. To get started, you can subscribe to the Toaster
>mailing list:

Sure I'll start looking over there. I'm pretty busy with my college
schedule right now so I'm afraid I can't make it to the regular
meetings. But thanks for the offer! :)

>Hob is not meant to be like Suse Studios. Further more you are right about=
 the interface sucking
>hard for certain things, I would recommend you start cleaning that up firs=
t and then afterwards
>move on to other areas of interest with YP.
>Cheers Nick

I see, will do.

Cheers.

On Tue, Nov 11, 2014 at 7:53 AM, Barros Pena, Belen
<belen.barros.pena@intel.com> wrote:
> Hi Richard,
>
> On 11/11/2014 12:58, "Richard Schmitt" <richard.schmitt@freescale.com>
> wrote:
>
>>We also are looking to update Hob.
>
> It is great to see so much interest in Hob: for a while we thought nobody
> was using it! But I should probably be clear about the project plans in
> relation to Hob. The final goal is to replace it with Toaster. Hob is
> still being maintained, but no new features are planned for it.
>
> You are of course free to take Hob and add to it if you feel that's the
> tool that better suits your needs. However:
>
> * I cannot guarantee that Hob will be included in future releases of the
> Yocto Project.
>
> * Having been very involved in both Hob and Toaster, I must say that
> Toaster will be much more powerful, easier to extend with new features
> like the ones you suggest below, and in general way nicer to use.
>
> I am not sure how much you know about the Toaster project, or if there is
> anything in it that makes it unfit for your needs. But I would be happy t=
o
> have a chat about it all, answer any questions you may have, and demo it
> if you'd like to see it.
>
>>In particular, adding kernel feature support.  Branding would be nice
>>too.
>
> A kernel configuration module for Toaster is something that we'd like to
> see at some point. And the branding one I agree it would be great to have=
.
> Feel free to open Bugzilla entries for both.
>
> Cheers
>
> Bel=C3=A9n
>
>>
>>Rich
>>
>>-----Original Message-----
>>From: yocto-bounces@yoctoproject.org
>>[mailto:yocto-bounces@yoctoproject.org] On Behalf Of Barros Pena, Belen
>>Sent: Tuesday, November 11, 2014 4:37 AM
>>To: John Unland; yocto@yoctoproject.org
>>Subject: Re: [yocto] Making Hob better.
>>
>>Hi John,
>>
>>Thanks for your feedback on Hob: I agree with everything you said.
>>
>>We are currently moving towards web-based interfaces for the Yocto
>>Project tools, and are working on something called Toaster that
>>eventually will do what Hob does. You can get more information on Toaster
>>at
>>
>>https://www.yoctoproject.org/documentation/toaster-manual-17
>>
>>On 10/11/2014 23:58, "John Unland" <opensourcejohn2112@gmail.com> wrote:
>>
>>>Lastly, I would really love to help with development as well.
>>> I
>>>haven't really gotten into programming that much but I have worked with
>>>the Fedora Server Special Interest Group doing QA for Alpha and Beta
>>>release. So if anyone can put me in the right direction I can certainly
>>>help YP out.
>>
>>Contributions are very welcome! :) You can get involved in both
>>development and QA work. To get started, you can subscribe to the Toaster
>>mailing list:
>>
>>https://lists.yoctoproject.org/listinfo/toaster
>>
>>You can have a look at the features we are currently working on in the
>>Yocto Project Bugzilla instance
>>
>>http://goo.gl/KncliQ
>>
>>There is information on how to contribute at
>>
>>https://wiki.yoctoproject.org/wiki/Contribute_to_Toaster
>>
>>We also have a weekly call that happens on Wednesdays at 4pm GMT. If you
>>would like to join the call, let me know.
>>
>>All the best,
>>
>>Bel=C3=A9n
>>
>>
>>>
>>>Thank you.
>>>--
>>>_______________________________________________
>>>yocto mailing list
>>>yocto@yoctoproject.org
>>>https://lists.yoctoproject.org/listinfo/yocto
>>
>>--
>>_______________________________________________
>>yocto mailing list
>>yocto@yoctoproject.org
>>https://lists.yoctoproject.org/listinfo/yocto
>

