Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5691FE00C5B; Sat,  3 Oct 2015 18:36:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.43 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f43.google.com (mail-pa0-f43.google.com
	[209.85.220.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BC322E00927
	for <yocto@yoctoproject.org>; Sat,  3 Oct 2015 18:36:43 -0700 (PDT)
Received: by pablk4 with SMTP id lk4so140320589pab.3
	for <yocto@yoctoproject.org>; Sat, 03 Oct 2015 18:36:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=Z4WYBUwsLWUqgEVH4qwD731YkKCBpbx24LgbIni+naM=;
	b=PgwU6MUtzUQyM+2R7iEdHMikdI1Dg1bXDs1zmsmdeCXKSKyiM+kxuPd97oZ/iIGlWr
	lJBgEARwgGNNzacwCf76fbCMZk4ypxq0QZOQUsP4NfeO0uEDsnY/P4UY6j8Q+TILSa6j
	5vjgRALPfdW/9zsOMytBQTZuA90QDaulMUiRtn+C+XgS9EXFLifdI+6L3jPlpObOVoXm
	yO2K1OJmiauAJKQL5cud/QiytgrCPwnHvyNNLeclBErRdywUAXuvfMlz0OCIa4I1LfjG
	4IMk7/UQg4EBFx8B7mUTQRCYPZFw/+jX5+2uMkMNhslrDsvqpEuem93x2BHAk3NZL7yA
	gHxA==
X-Received: by 10.68.242.2 with SMTP id wm2mr15374777pbc.31.1443922603085;
	Sat, 03 Oct 2015 18:36:43 -0700 (PDT)
Received: from [192.168.0.2] (60-242-179-244.static.tpgi.com.au.
	[60.242.179.244]) by smtp.gmail.com with ESMTPSA id
	rx8sm19586799pbb.90.2015.10.03.18.36.40
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 03 Oct 2015 18:36:42 -0700 (PDT)
To: Andrei Gherzan <andrei@gherzan.ro>
References: <1440231935-11042-1-git-send-email-net147@gmail.com>
	<561067E2.5020807@gmail.com> <20151004000419.GA28229@resin>
	<56107E22.3050701@gmail.com>
From: Jonathan Liu <net147@gmail.com>
Message-ID: <561082A6.3090503@gmail.com>
Date: Sun, 4 Oct 2015 12:36:38 +1100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <56107E22.3050701@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH v2] linux-raspberrypi.inc: use SRCPV instead of SRCREV for PV
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
X-List-Received-Date: Sun, 04 Oct 2015 01:36:50 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 4/10/2015 12:17 PM, Jonathan Liu wrote:
> On 4/10/2015 11:04 AM, Andrei Gherzan wrote:
>> On Sun, Oct 04, 2015 at 10:42:26AM +1100, Jonathan Liu wrote:
>>> On 22/08/2015 6:25 PM, Jonathan Liu wrote:
>>>> SRCPV is intended to be used by PV. Using SRCREV for PV is incorrect.
>>>>
>>>> Signed-off-by: Jonathan Liu <net147@gmail.com>
>>>> ---
>>>>   recipes-kernel/linux/linux-raspberrypi.inc | 3 ++-
>>>>   1 file changed, 2 insertions(+), 1 deletion(-)
>>>>
>>>> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc 
>>>> b/recipes-kernel/linux/linux-raspberrypi.inc
>>>> index d60a3e9..ef98421 100644
>>>> --- a/recipes-kernel/linux/linux-raspberrypi.inc
>>>> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
>>>> @@ -12,7 +12,8 @@ SRC_URI += " \
>>>>   COMPATIBLE_MACHINE = "raspberrypi"
>>>> -PV = "${LINUX_VERSION}+git${SRCREV}"
>>>> +PV = "${LINUX_VERSION}+git${SRCPV}"
>>>> +PR = "r1"
>> Why would you want to bump PR? It will eventually end up being the 
>> same value,
>> right? The PV change makes sense and is a good idea. And even if it's 
>> not the
>> same value will trigger a new build cause PV will change.
> Without bumping PR, the version went backwards for me.
> The v1 patch posted earlier on the ML doesn't bump PR if you prefer that.
Now that I think about, bumping PR doesn't make any sense at all as it 
is after the git revision.
If anything, PE should be bumped to 1. Should I bump PE instead or just 
go with v1 patch?

Regards,
Jonathan

