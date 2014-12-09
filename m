Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21AE1E0093F; Tue,  9 Dec 2014 08:53:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.177 listed in list.dnswl.org]
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D5A2CE0082F
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 08:53:36 -0800 (PST)
Received: by mail-vc0-f177.google.com with SMTP id ij19so459292vcb.22
	for <yocto@yoctoproject.org>; Tue, 09 Dec 2014 08:53:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type
	:content-transfer-encoding;
	bh=cSLBkNYckcMvTHty85qJxUS40fp+RYnmfh9gm9/dLuo=;
	b=NiWQ6skocLBpr8ljwfRgZ0IY/2wOU+mSN0lEx6SNVh1iWPbo+M2FUumDR5dCZEJAz2
	XZ6d7DYyvvC6vNN700BYAxUk+cZ60SKi7cYSVgrRgSlUqCEwvJd1jZPnpI0/iPhlbdcr
	3qj7m+Zckw3BGpEbtfsk2cPvfjfRrlyeDa7shaWxXdsr35X6IXbsSrrezJVD98R0k4TO
	vUJ6iysOSU/rJXwj+niD8FBOYqYkmBuqynyL0m4xTzim1XXKm55FpDvkRgodk8OvGqTW
	Xusoz8LAqH75Zr3QsrFjAg7AtNQHeFcgwiDqqMSlWgnG/RP/YrDa+tkY2QjHBmSKlPhI
	Gb4g==
X-Gm-Message-State: ALoCoQmKP3mW3NTmyDkd7I9XooAVxyqlcfz7ycqe3ojIV6C8KeFueJoDHIB055v/RTZMF2TNf+XS
MIME-Version: 1.0
X-Received: by 10.221.4.2 with SMTP id oa2mr1570535vcb.17.1418144016046; Tue,
	09 Dec 2014 08:53:36 -0800 (PST)
Received: by 10.52.244.44 with HTTP; Tue, 9 Dec 2014 08:53:35 -0800 (PST)
In-Reply-To: <BLUPR05MB037FF40669BF4F3CC924C3DBB650@BLUPR05MB037.namprd05.prod.outlook.com>
References: <1417793213-26974-1-git-send-email-bevenson@melinkcorp.com>
	<CAPhnLPCyfRZ+SPG0pPJxs=20LqwWzoWxnRTwXRkM6zBZtj5Qnw@mail.gmail.com>
	<BLUPR05MB037FF40669BF4F3CC924C3DBB650@BLUPR05MB037.namprd05.prod.outlook.com>
Date: Tue, 9 Dec 2014 08:53:35 -0800
Message-ID: <CAPhnLPAb24ayBg2oaEpdU=ifbakRY-eUd2fSm=r3ReJVMFoEXg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Bryan Evenson <bevenson@melinkcorp.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	California L Sullivan <california.l.sullivan@intel.com>
Subject: Re: [autobuilder][PATCH 0/2] GitPoller changesource improvements
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
X-List-Received-Date: Tue, 09 Dec 2014 16:53:49 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Dec 9, 2014 at 5:26 AM, Bryan Evenson <bevenson@melinkcorp.com> wro=
te:
> Elizabeth,
>
> Thanks for pulling in my commits, but it is incomplete.  The top two comm=
its from the sullical/contrib branch are needed before the GitPoller change=
source will work.  Specifically, they are commits ecf1b8716d7e695a88976bba7=
47af5c5bbe0007f and c0aac5c415797aac5c204b2b70ee5a896d76ffdc.  Once these a=
re in place the GitPoller changesource should work.

Ah. I think these got missed in Cals pull request (or he had an
earlier pull request I missed?) I've looked at the commits and have
pulled them into master-next. They should be in master by EOD.

Thanks!

-b

>
> Regards,
> Bryan
>
>> -----Original Message-----
>> From: Flanagan, Elizabeth [mailto:elizabeth.flanagan@intel.com]
>> Sent: Monday, December 08, 2014 7:33 PM
>> To: Bryan Evenson
>> Cc: yocto@yoctoproject.org; California L Sullivan
>> Subject: Re: [autobuilder][PATCH 0/2] GitPoller changesource improvement=
s
>>
>> Pulled into master, thanks!
>>
>> -b
>>
>> On Fri, Dec 5, 2014 at 3:26 PM, Bryan Evenson <bevenson@melinkcorp.com>
>> wrote:
>> > These are fixes on top of California Sullivan's work for adding the
>> > GitPoller changesource.  With my testing, I was unable to get the
>> > GitPoller changesource to work until I added the first patch.  The
>> > second patch documents how to use the GitPoller changesource.
>> >
>> > Applies on top of HEAD of git://git.yoctoproject.org/yocto-autobuilder
>> > branch sullical/contrib
>> >
>> > Bryan Evenson (2):
>> >   Autobuilder.py: Import gitpoller module
>> >   Documentation: Document GitPoller changesource
>> >
>> >  README-NEW-AUTOBUILDER                             |   35 +++++++++++=
+++++----
>> >  docs/YoctoAutobuilderDevelopersDocument.html       |   26
>> +++++++++++++--
>> >  .../site-packages/autobuilder/Autobuilder.py       |    1 +
>> >  3 files changed, 54 insertions(+), 8 deletions(-)
>> >
>> > --
>> > 1.7.9.5
>> >
>>
>>
>>
>> --
>> Elizabeth Flanagan
>> Yocto Project
>> Build and Release



--=20
Elizabeth Flanagan
Yocto Project
Build and Release

