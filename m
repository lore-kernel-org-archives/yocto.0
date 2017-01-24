Return-Path: <ptulpen@emailn.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1232BE00BE0; Tue, 24 Jan 2017 05:57:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ptulpen[at]emailn.de)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.emailn.de (mail.emailn.de [46.182.20.28])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A943E00BA2
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 05:57:31 -0800 (PST)
Received: from mail.emailn.de (46.182.20.122 [46.182.20.122])
	by mail.emailn.de (b1gMailServer) with ESMTP id 777EEB6D
	for <yocto@yoctoproject.org>; Tue, 24 Jan 2017 14:45:33 +0100 (CET)
Date: Tue, 24 Jan 2017 14:57:46 +0100
MIME-Version: 1.0
Message-ID: <19b5983d2bf16e461f6251c84f2e0d76@mail.emailn.de>
X-Mailer: b1gMail/7.2.0
X-Sender-IP: 195.243.253.146
From: "Peter Tulpen" <ptulpen@emailn.de>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
In-Reply-To: <9523039.54BZtVoRWY@peggleto-mobl.ger.corp.intel.com>
References: <b8e51238b7798e9b642c019b120adac0@mail.emailn.de>
	<9523039.54BZtVoRWY@peggleto-mobl.ger.corp.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [layerindex-web] issue with webinterface
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Peter Tulpen <ptulpen@emailn.de>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 24 Jan 2017 13:57:35 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit
Content-Disposition: inline

Hello Paul,
you are brilliant:
I had errors with django 1.10 and uncommented:
from django.conf.global_settings import TEMPLATE_CONTEXT_PROCESSORS as TCP
TEMPLATE_CONTEXT_PROCESSORS = TCP + (
    'django.core.context_processors.request',
    'layerindex.context_processors.layerindex_context',
)

Since it was causing problems and was deprecated and not needed in 1.10 (according to some websites)
But since I cold not get it working with 1.10 anyway, I downgraded to 1.8 again and forgot about this parts

Thanks a lot


--- Ursprüngliche Nachricht ---
Von: Paul Eggleton <paul.eggleton@linux.intel.com>
Datum: 22.01.2017 20:23:43
An: Peter Tulpen <ptulpen@emailn.de>
Betreff: Re: [yocto] [layerindex-web] issue with webinterface

> Hi Peter,
>
> On Thu, 19 Jan 2017 18:05:12 Peter Tulpen wrote:
> > Hello, I installed the webinterface locally and configured it with several
>
> > branches But when I want to browse it, I can only choose master:
> >
> > https://postimg.org/image/dq1vj6v7h/
> >
> > When I browse to http://MYSERVER/layerindex/branch/jethro/layers/, I
> see
> > that the branches are there My installation based on a git clone from
> the
> > master tree.
> >
> > Did I miss something or did I hit a bug?
>
> There's no filtering on the query used to get the list of branches to show
>
> other than the name is not "oe-classic". However, one way I can
> think of that
> that could be blank would be if the context processors used to inject the
>
> "all_branches" queryset results into the context for each page.
> You haven't
> modified settings.py such that
> layerindex.context_processors.layerindex_context has been removed from the
>
> TEMPLATE_CONTEXT_PROCESSORS value by any chance?
>
> Otherwise, what changes did you make to settings.py? Which Django version
> are
> you using?
>
> Cheers,
> Paul
>
> --
>
> Paul Eggleton
> Intel Open Source Technology Centre
>



