Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85493E0084A; Mon,  8 Dec 2014 16:33:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B595BE007C1
	for <yocto@yoctoproject.org>; Mon,  8 Dec 2014 16:32:48 -0800 (PST)
Received: by mail-vc0-f181.google.com with SMTP id le20so2667120vcb.26
	for <yocto@yoctoproject.org>; Mon, 08 Dec 2014 16:32:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=Z/GDLskPVLEvgOgwF2Pfo/Z1LdB2fyFaAMlibP88Hes=;
	b=gpBfsXmy/8fWA2DPq3Qtu0LIBpA41VZhTPtVFcn5NecJhs1BH79oXY6P/O4q5NH10e
	FwgimhlQPmh1HMTzXkWo+9SyAX2uMq+i7OOtMz3zq/R+QHXN3lQxr0BHDK16+U3lc7AW
	jnqk4jEGXRsxFjzenD8h+hHR7oUxdIz3YEu0tpo0lUshrAciZsZLYO89zQzrtCXbVKXY
	DCKBW8LuwQ20LJsKjPvphBKunG7AH3VT2trNCMS4/1CRJv/fGx1ep7gqYcqZig4IPCmD
	URBndyp3trlaTBDv6N93p24KDBVByziGT3RhP5LH+0oEk3D2T6+LGAOUcGrgBKLE0S9j
	9mHg==
X-Gm-Message-State: ALoCoQl6v7HEzkxmF/BMhtZc6ggwVDPrSl5OHiDzu25uyijca//U8jicc0JidhWg91XS/WCpGAza
MIME-Version: 1.0
X-Received: by 10.52.30.49 with SMTP id p17mr53066vdh.69.1418085168383; Mon,
	08 Dec 2014 16:32:48 -0800 (PST)
Received: by 10.52.244.44 with HTTP; Mon, 8 Dec 2014 16:32:48 -0800 (PST)
In-Reply-To: <1417793213-26974-1-git-send-email-bevenson@melinkcorp.com>
References: <1417793213-26974-1-git-send-email-bevenson@melinkcorp.com>
Date: Tue, 9 Dec 2014 00:32:48 +0000
Message-ID: <CAPhnLPCyfRZ+SPG0pPJxs=20LqwWzoWxnRTwXRkM6zBZtj5Qnw@mail.gmail.com>
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
X-List-Received-Date: Tue, 09 Dec 2014 00:33:03 -0000
Content-Type: text/plain; charset=UTF-8

Pulled into master, thanks!

-b

On Fri, Dec 5, 2014 at 3:26 PM, Bryan Evenson <bevenson@melinkcorp.com> wrote:
> These are fixes on top of California Sullivan's work for adding the
> GitPoller changesource.  With my testing, I was unable to get the GitPoller
> changesource to work until I added the first patch.  The second patch
> documents how to use the GitPoller changesource.
>
> Applies on top of HEAD of git://git.yoctoproject.org/yocto-autobuilder branch sullical/contrib
>
> Bryan Evenson (2):
>   Autobuilder.py: Import gitpoller module
>   Documentation: Document GitPoller changesource
>
>  README-NEW-AUTOBUILDER                             |   35 ++++++++++++++++----
>  docs/YoctoAutobuilderDevelopersDocument.html       |   26 +++++++++++++--
>  .../site-packages/autobuilder/Autobuilder.py       |    1 +
>  3 files changed, 54 insertions(+), 8 deletions(-)
>
> --
> 1.7.9.5
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

