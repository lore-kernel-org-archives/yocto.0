Return-Path: <net147@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 28C88E00B8F; Mon, 26 Oct 2015 01:25:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (net147[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.42 listed in list.dnswl.org]
Received: from mail-pa0-f42.google.com (mail-pa0-f42.google.com
	[209.85.220.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EED0BE00978
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 01:24:56 -0700 (PDT)
Received: by pacfa8 with SMTP id fa8so2645301pac.0
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 01:24:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-type:content-transfer-encoding;
	bh=OTId+fr9yhuUEIr7DCUJNwV5nJuMFQWQUDosQ/WsB2g=;
	b=T/XLDDv5gsQyfkxQIhI+iux1eUi1yo4XTiXwnl3U18GZcbLmYOyOYjFmTkTpwQR0eL
	NuQDhTke6DWsEVVvMPhZpnzpB5sr1TKHWktk6v0j6B+qdIBKwNpukqLnzLKIasCsLdCa
	mYZOjMLfE0g+1dvb9Cym0GrpZaTd/B6hXkzo5E+YLy2y4SdrTmgEp9ED3pGb6YH+sB3T
	BwfBpeb35x7zogKfkFxVVgZ239+PfVa3efD4nigoFOWm6ilsQfTYR97H44Pwcx3pxyeR
	3HeG1UbFenn1e0G/kZG+JPSkHiT8lJDRimHbCwSJvRhUqC+m9Zw1j6zUSgkjejksFZaG
	8tRg==
X-Received: by 10.69.8.34 with SMTP id dh2mr8440948pbd.122.1445847895563;
	Mon, 26 Oct 2015 01:24:55 -0700 (PDT)
Received: from [192.168.0.2] (60-242-179-244.static.tpgi.com.au.
	[60.242.179.244]) by smtp.gmail.com with ESMTPSA id
	ia3sm18278279pbb.5.2015.10.26.01.24.52
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 26 Oct 2015 01:24:54 -0700 (PDT)
To: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
References: <1445812988-6456-1-git-send-email-net147@gmail.com>
	<5542134.NUiWrkt5lN@peggleto-mobl.ger.corp.intel.com>
From: Jonathan Liu <net147@gmail.com>
Message-ID: <562DE34F.2040905@gmail.com>
Date: Mon, 26 Oct 2015 19:24:47 +1100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <5542134.NUiWrkt5lN@peggleto-mobl.ger.corp.intel.com>
Cc: Otavio Salvador <otavio@ossystems.com.br>
Subject: Re: [meta-raspberrypi][PATCH v2] qtbase: enable Raspberry Pi support
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
X-List-Received-Date: Mon, 26 Oct 2015 08:25:01 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 26/10/2015 7:08 PM, Paul Eggleton wrote:
> On Monday 26 October 2015 09:43:08 Jonathan Liu wrote:
>> [Support #16]
>>
>> Signed-off-by: Jonathan Liu <net147@gmail.com>
>> ---
>>   recipes-qt/qt5/qtbase_%.bbappend | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>   create mode 100644 recipes-qt/qt5/qtbase_%.bbappend
>>
>> diff --git a/recipes-qt/qt5/qtbase_%.bbappend
>> b/recipes-qt/qt5/qtbase_%.bbappend new file mode 100644
>> index 0000000..3e5e667
>> --- /dev/null
>> +++ b/recipes-qt/qt5/qtbase_%.bbappend
>> @@ -0,0 +1,6 @@
>> +do_configure_prepend_rpi() {
>> +    cat > ${S}/mkspecs/oe-device-extra.pri << 'EOF'
>> +EGLFS_DEVICE_INTEGRATION = eglfs_brcm
>> +QMAKE_LIBS_EGL = -lEGL -lGLESv2
>> +EOF
>> +}
> I'm wondering if this is a good idea or not. I appreciate the intention, but
> does bbappending non-machine-specific recipes like this play well when you have
> other machines enabled in the same distro?
>
> Cheers,
> Paul
>
It would rebuild qtbase (and recipes depending on it) without Raspberry 
Pi support for other machines.
I see similar machine-specific do_configure_prepend elsewhere (e.g. 
https://github.com/Freescale/meta-fsl-arm/blob/master/qt5-layer/recipes-qt/qt5/qtbase_%25.bbappend).

Otavio, any thoughts on a better way to handle this?

Regards,
Jonathan

