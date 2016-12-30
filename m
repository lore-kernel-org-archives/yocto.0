Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08300E0071E; Thu, 29 Dec 2016 23:20:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f180.google.com (mail-wj0-f180.google.com
	[209.85.210.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93095E006EC
	for <yocto@yoctoproject.org>; Thu, 29 Dec 2016 23:20:02 -0800 (PST)
Received: by mail-wj0-f180.google.com with SMTP id sd9so187885116wjb.1
	for <yocto@yoctoproject.org>; Thu, 29 Dec 2016 23:20:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=8O48OVRCEh9PadlGiYfUv+5/Cs2ReAglyVDgX5kXeSA=;
	b=AQmKpc2/oKxq/xvfK+QlUsJosneOMYTO1vPW9SvrdgIGYstSAuUbPM3KtRs4vowMF8
	MG+aSLqfNxtJER1q+2nZ4gp/YuiFvhp7HUlaS2wHZCJ1noGF7RbkBLhfVs2Gn6vWCYL8
	bCHDfWUOv70jXT+WP1uUaxjsDzLdAMYFTnljsDMdJGnN3KAkhKjG4Ilc9QlEwRTa5G4n
	mBSxfBhJZnI1vKFGQigoxWmrvDsNqyxsOKk/Hc1+EIPkmAv7TpZmjym4yhNfN66Mvbs+
	ZuMuLcugPV6KEnuJFZcUoKeixZ7QEa6s9htNlxTLX0U2D/pUU8K7DtGP6biQqPgY3iVX
	zwcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=8O48OVRCEh9PadlGiYfUv+5/Cs2ReAglyVDgX5kXeSA=;
	b=gWbrXuUPOExwydw/ooV5yCU80KOlWcKiG9FHNBnecV1jnC5Nb2zan0tq+jWmMhA3tt
	GvCSr+e/dHcQngNMJPxUbTSe8BUzzhy3yMrIPZbUp5KyPvh2jZnYxPjXzenJ4Tx3yWWj
	XGtwSbYDjqfE24OIaRVuNdrcnRvlAiGUdAn9MB4qpATxiKnb+DgYWkybmggCXWpCkGJK
	VbUf+uvojyDsDnWxTQEVoq8Qc17oe8BGW0GWsuo0kHAcljFHR6Lc/gnKgTpx4uWTuWvJ
	75WhZD3J+9hOgzUllVAUhyNltXiVgBDyRV+JUsR8x6WX3og5ijNzByE9eFj5jI5m8cmJ
	P+kQ==
X-Gm-Message-State: AIkVDXLMSFTGlp/YpLoTlJNUwONItNZyatHS5es7g3TI4lPi9gET/zymLzRaOij4mOhDJQ==
X-Received: by 10.194.137.15 with SMTP id qe15mr44098001wjb.16.1483082401493; 
	Thu, 29 Dec 2016 23:20:01 -0800 (PST)
Received: from [192.168.2.176] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	ua15sm72196571wjb.1.2016.12.29.23.20.00
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 29 Dec 2016 23:20:01 -0800 (PST)
To: Andrei Gherzan <andrei@gherzan.ro>, Khem Raj <raj.khem@gmail.com>
References: <1481796330-13908-1-git-send-email-piotr.lewicki@elfin.de>
	<1481796330-13908-2-git-send-email-piotr.lewicki@elfin.de>
	<7304ACDB-B05D-472D-8FF5-FC5CE402E88E@gmail.com>
	<20161229182015.GE26059@carbonA>
From: Piotr Lewicki <piotr.lewicki@elfin.de>
Message-ID: <feb28a07-c7de-033b-ba79-e9f81dd63667@elfin.de>
Date: Fri, 30 Dec 2016 08:20:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <20161229182015.GE26059@carbonA>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/1] linux-rpi: clean .config in before do_configure step
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
X-List-Received-Date: Fri, 30 Dec 2016 07:20:06 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 29.12.2016 19:20, Andrei Gherzan wrote:
> On Fri, Dec 16, 2016 at 08:58:22AM -0800, Khem Raj wrote:
>>> On Dec 15, 2016, at 2:05 AM, Piotr Lewicki <piotr.lewicki@elfin.de> wrote:
>>>
>>> Signed-off-by: Piotr Lewicki <piotr.lewicki@elfin.de>
>>> ---
>>> recipes-kernel/linux/linux-rpi.inc | 11 +++++++++--
>>> 1 file changed, 9 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/recipes-kernel/linux/linux-rpi.inc b/recipes-kernel/linux/linux-rpi.inc
>>> index 95a9530..c665b9f 100644
>>> --- a/recipes-kernel/linux/linux-rpi.inc
>>> +++ b/recipes-kernel/linux/linux-rpi.inc
>>> @@ -34,11 +34,13 @@ kernel_configure_variable() {
>>>      fi
>>> }
>>>
>>> -do_configure_prepend() {
>>> +do_rpi_kconfig_clean() {
>>>      # Clean .config
>>> -    echo "" > ${B}/.config
>>> +    echo -n "" > ${B}/.config
>>>      CONF_SED_SCRIPT=""
>>> +}
>>>
>>> +do_configure_prepend() {
>>>      # oabi / eabi support
>>>      kernel_configure_variable AEABI y
>>>      if [ "${ARM_KEEP_OABI}" = "1" ] ; then
>>> @@ -124,8 +126,11 @@ do_configure_prepend() {
>>>      # Keep this the last line
>>>      # Remove all modified configs and add the rest to .config
>>>      sed -e "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${B}/.config'
>>> +    # Clean variable- useful when calling configure step multiple times
>>> +    CONF_SED_SCRIPT=""
>>>
>>>      yes '' | oe_runmake oldconfig
>>> +
>>> }
>>>
>>> # Automatically depend on lzop-native if CONFIG_KERNEL_LZO is enabled
>>> @@ -146,3 +151,5 @@ python () {
>>>
>>>      configfile.close()
>>> }
>>> +
>>> +addtask rpi_kconfig_clean before do_configure after do_populate_lic
>> we should investigate the kernel tooling from OE-Core and use that IMO
> I'm all for this. We should get rid of this and unify with oe-core
> tooling.
>
> @Piotr Would you like to work on this and remove completely this while
> reworking on the kernel fragments configuration support? I'll take a
> look on the old patches too.
@Andrei: I'll try to do this.
>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> --
> Andrei Gherzan


