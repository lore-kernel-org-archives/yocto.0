Return-Path: <piotr.lewicki@elfin.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ADF61E0083C; Mon,  2 Jan 2017 05:41:38 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.210.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wj0-f175.google.com (mail-wj0-f175.google.com
	[209.85.210.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3554BE004A0
	for <yocto@yoctoproject.org>; Mon,  2 Jan 2017 05:41:25 -0800 (PST)
Received: by mail-wj0-f175.google.com with SMTP id c11so220019281wjx.3
	for <yocto@yoctoproject.org>; Mon, 02 Jan 2017 05:41:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=elfin.de; s=google;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=DioPSiQhsnZqaRY9JXyMNqeOtv2HhIpngiG/hbiR7B4=;
	b=IZalFa1jsJLCZ90EDCsHTbdkvsg2kR/VV4qknpG1isor+Eq/v10htKWMbO24UBddsa
	OMHXmqS9Cc8FQtA0W3QJhVGN9R5lMmurXGpYKJWVgfj/Ulr15zud6xGZqvUJ0B82mob1
	5zzsiuGy/NWJ77M7VFnIZ7czngsAdbLsND2tnfzCn+ymYiswVH3+SWK79H05NhgsRpnM
	g3cD75bvoAS9wpO2Ig705Kjj2Fhi0CVa8psLNqZDOaGkZ1Dmr5eOadeh3kdSZuTwv2/c
	9jtQ5kQp/TUWvZ2B8xiBv6h5CNIs3kk7xniOYgfT6X9IqSoq12yueA9oxRphAhwd4TTr
	n+/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=DioPSiQhsnZqaRY9JXyMNqeOtv2HhIpngiG/hbiR7B4=;
	b=TL3kgj/5CVrxsux2O3uZI4XWCHVN57SYYh28gw9U+Gz3SAT9cZaNjtW/p3mZVgHKFg
	tKWlQAUc5tGfpKN72Hg0W5Fbu7JtJqjxUlunNv7/VDaZO9EzoYzLEYZKs/O2D8TgiRoP
	1wxM6VP1Ra4UeuHy3KusXw4lbhfEy6361bEONQgNAupZeSuqWMNeFTS0hFbydxSEXlKM
	T49ncehloSPQTc64TepChaUKKbeXe+kJ73xsWGd4+u13t3OJAAIrY1bSO51JVU64PP0G
	ordkarrK87BRk+SsrdtKK9u7KxIhMSE70GDBRW/cazz+5+j77TScdXObF3UuInerrV9A
	k5jA==
X-Gm-Message-State: AIkVDXJ70966hse7LAexjkQ795Lfl4e2k5B0X5zq0z8jJbaTRfyIAGA12zzEocVnhZD6ag==
X-Received: by 10.194.73.169 with SMTP id m9mr49895408wjv.101.1483364482340;
	Mon, 02 Jan 2017 05:41:22 -0800 (PST)
Received: from [192.168.2.176] (b2b-94-79-174-114.unitymedia.biz.
	[94.79.174.114]) by smtp.gmail.com with ESMTPSA id
	b15sm84478184wma.5.2017.01.02.05.41.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 02 Jan 2017 05:41:21 -0800 (PST)
To: Andrei Gherzan <andrei@gherzan.ro>
References: <1481796330-13908-1-git-send-email-piotr.lewicki@elfin.de>
	<1481796330-13908-2-git-send-email-piotr.lewicki@elfin.de>
	<7304ACDB-B05D-472D-8FF5-FC5CE402E88E@gmail.com>
	<20161229182015.GE26059@carbonA>
	<feb28a07-c7de-033b-ba79-e9f81dd63667@elfin.de>
	<20161230132051.GJ26059@carbonA>
From: Piotr Lewicki <piotr.lewicki@elfin.de>
Message-ID: <69727269-2145-b083-d95e-f66dab7ce5bf@elfin.de>
Date: Mon, 2 Jan 2017 14:41:18 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.5.1
MIME-Version: 1.0
In-Reply-To: <20161230132051.GJ26059@carbonA>
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
X-List-Received-Date: Mon, 02 Jan 2017 13:41:38 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 30.12.2016 14:20, Andrei Gherzan wrote:
> On Fri, Dec 30, 2016 at 08:20:00AM +0100, Piotr Lewicki wrote:
>> On 29.12.2016 19:20, Andrei Gherzan wrote:
>>> On Fri, Dec 16, 2016 at 08:58:22AM -0800, Khem Raj wrote:
>>>>> On Dec 15, 2016, at 2:05 AM, Piotr Lewicki <piotr.lewicki@elfin.de> wrote:
>>>>>
>>>>> Signed-off-by: Piotr Lewicki <piotr.lewicki@elfin.de>
>>>>> ---
>>>>> recipes-kernel/linux/linux-rpi.inc | 11 +++++++++--
>>>>> 1 file changed, 9 insertions(+), 2 deletions(-)
>>>>>
>>>>> diff --git a/recipes-kernel/linux/linux-rpi.inc b/recipes-kernel/linux/linux-rpi.inc
>>>>> index 95a9530..c665b9f 100644
>>>>> --- a/recipes-kernel/linux/linux-rpi.inc
>>>>> +++ b/recipes-kernel/linux/linux-rpi.inc
>>>>> @@ -34,11 +34,13 @@ kernel_configure_variable() {
>>>>>       fi
>>>>> }
>>>>>
>>>>> -do_configure_prepend() {
>>>>> +do_rpi_kconfig_clean() {
>>>>>       # Clean .config
>>>>> -    echo "" > ${B}/.config
>>>>> +    echo -n "" > ${B}/.config
>>>>>       CONF_SED_SCRIPT=""
>>>>> +}
>>>>>
>>>>> +do_configure_prepend() {
>>>>>       # oabi / eabi support
>>>>>       kernel_configure_variable AEABI y
>>>>>       if [ "${ARM_KEEP_OABI}" = "1" ] ; then
>>>>> @@ -124,8 +126,11 @@ do_configure_prepend() {
>>>>>       # Keep this the last line
>>>>>       # Remove all modified configs and add the rest to .config
>>>>>       sed -e "${CONF_SED_SCRIPT}" < '${WORKDIR}/defconfig' >> '${B}/.config'
>>>>> +    # Clean variable- useful when calling configure step multiple times
>>>>> +    CONF_SED_SCRIPT=""
>>>>>
>>>>>       yes '' | oe_runmake oldconfig
>>>>> +
>>>>> }
>>>>>
>>>>> # Automatically depend on lzop-native if CONFIG_KERNEL_LZO is enabled
>>>>> @@ -146,3 +151,5 @@ python () {
>>>>>
>>>>>       configfile.close()
>>>>> }
>>>>> +
>>>>> +addtask rpi_kconfig_clean before do_configure after do_populate_lic
>>>> we should investigate the kernel tooling from OE-Core and use that IMO
>>> I'm all for this. We should get rid of this and unify with oe-core
>>> tooling.
>>>
>>> @Piotr Would you like to work on this and remove completely this while
>>> reworking on the kernel fragments configuration support? I'll take a
>>> look on the old patches too.
>> @Andrei: I'll try to do this.
> That would be very helpful. This one of my top things to change in this
> layer.
I'm wondering if this make sense to rewrite linux-rpi.inc file so that 
it uses config fragments.
If we only apply the old patch from Alex J Lennon ("linux-raspberrypi: 
support configuration fragments / in-tree defconfig") than kernel config 
fragments (using .cfg files with kernel configs) can be used with 
linux-raspberrypi (tested).

All of the kernel configs that are set in "linux-rpi.inc" file (e.g. VC4 
related config flags if one has VC4 support) should be applied even if 
somebody sets some other value in config fragment file.

If we only use Alex's patch then we first apply all of the config 
fragments and then if needed - overwrite them with options necessary by 
the rpi machine.

I'm resending Alex's patch either way for easier applying.
>
> --
> Andrei Gherzan
--
Piotr Lewicki

