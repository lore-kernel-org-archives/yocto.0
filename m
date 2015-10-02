Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6BE61E00A38; Fri,  2 Oct 2015 08:08:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, MALFORMED_FREEMAIL,
	MISSING_HEADERS, RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.160.182 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (danielhilst[at]gmail.com)
	*  1.0 MISSING_HEADERS Missing To: header
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* 0.0 MALFORMED_FREEMAIL Bad headers on message from free email service
Received: from mail-yk0-f182.google.com (mail-yk0-f182.google.com
	[209.85.160.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F1126E00349
	for <yocto@yoctoproject.org>; Fri,  2 Oct 2015 08:08:28 -0700 (PDT)
Received: by ykdz138 with SMTP id z138so112989034ykd.2
	for <yocto@yoctoproject.org>; Fri, 02 Oct 2015 08:08:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:cc
	:content-type; bh=jANla30/uWl3TnROkG+A25vzWeXzJVdGkidvAe82dU8=;
	b=HnAwE6JKZnCxsQsSDt88dFjTR25L4kUNWOBpoYXlum2oaMaCdRtoRMqDlVOzA5w2SC
	MqOaD87uINrqLQNT11YP3VKI+qd5rEvq62yU4gFnZi5mc/ZBtPq/42bM9MIJDRwmtn++
	lECS9+TcZYpTagmsZWtC/Ff3FEd1kK5LWnvUtKakQo9MoHYwfzFL9JT+FSOKDMJE1aWe
	Ac1lULYI2tFs4n1fbL2r4IjhOmoIDO4Cl3E48md9c1PqeYPYFg5GwxJjwpEN/XSgb03j
	2qGqQDVQ1IdWGhjhHEX5E+wK9DO9D2kvHEOYiEzIdBY7sgrHXrwiXOssQQHi1a+vTqCw
	CQZw==
MIME-Version: 1.0
X-Received: by 10.129.51.88 with SMTP id z85mr14080449ywz.148.1443798508076;
	Fri, 02 Oct 2015 08:08:28 -0700 (PDT)
Received: by 10.129.148.199 with HTTP; Fri, 2 Oct 2015 08:08:28 -0700 (PDT)
In-Reply-To: <560E9B25.5030303@balister.org>
References: <1006153332.270433.1443796078701.JavaMail.yahoo@mail.yahoo.com>
	<560E9B25.5030303@balister.org>
Date: Fri, 2 Oct 2015 12:08:28 -0300
Message-ID: <CAF3SDA7kvgNsTB7RM_wZgDUkz5b8msv7r7=3B1kCHVqR35aEbA@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: wpa_supplicant on Raspberry Pi 2B
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
X-List-Received-Date: Fri, 02 Oct 2015 15:08:33 -0000
Content-Type: text/plain; charset=UTF-8

What `wpa_cli stat' returns?

Regards,


2015-10-02 11:56 GMT-03:00 Philip Balister <philip@balister.org>:
> On 10/02/2015 10:27 AM, Edward Vidal wrote:
>> Hello all,I am using a Wi-Pi wireless adapter.
>> My image has the following packages installed.
>> wpa-supplicant-2.4-r0.cortexa7hf_vfp_vfpv4_neon
>> wpa-supplicant-cli-2.4-r0.cortexa7hf_vfp_vfpv4_neon
>> wpa-supplicant-dev-2.4-r0.cortexa7hf_vfp_vfpv4_neon
>> wpa-supplicant-doc-2.4-r0.cortexa7hf_vfp_vfpv4_neon
>> wpa-supplicant-passphrase-2.4-r0.cortexa7hf_vfp_vfpv4_neon
>> Do I need any additional packages?
>> My wired eth0 works okay.
>> Which document has the most current information on setting up wireless networking?From the information at
>>  http://trac.gateworks.com/wiki/Yocto/Wireless
>>
>> I modified my /etc/wpa_supplicant.conf as below without success.
>> ctrl_interface=/var/run/wpa_supplicant
>> ctrl_interface_group=0
>> update_config=1
>>
>
> Try modifying /etc/network/interfaces like this:
>
> https://github.com/EttusResearch/meta-ettus/commit/da86e76d116798e386d073a18453aabb6179a09a#diff-063964fa6e41065c7868b13b1b1644eaR11
>
> it seems wireless extensions are deprecated and you should use the
> nl80211 driver now.
>
> Philip
>
>
>> network={
>>         scan_ssid=1
>>         ssid="myssid"
>>         psk="mypsk"
>>         proto=WPA
>>         key_mgmt=WPA-PSK
>> }Below is the results I get when I run iwconfig.
>> iwconfig
>> wlan0     IEEE 802.11bgn  ESSID:off/any
>>           Mode:Managed  Access Point: Not-Associated   Tx-Power=0 dBm
>>           Retry short limit:7   RTS thr:off   Fragment thr:off
>>           Encryption key:off
>>           Power Management:off
>>
>> lo        no wireless extensions.
>>
>> eth0      no wireless extensions.
>> Thanks in advance.  Any help is appreciated.
>>
>>  Edward Vidal Jr. e-mail develone@sbcglobal.net 915-595-1613
>>
>>
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
"Do or do not. There is no try"
  Yoda Master

