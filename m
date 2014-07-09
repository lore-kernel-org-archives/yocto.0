Return-Path: <Seth.Bollinger@digi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B574DE0076A; Wed,  9 Jul 2014 09:49:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [216.82.254.113 listed in list.dnswl.org]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from mail1.bemta7.messagelabs.com (mail1.bemta7.messagelabs.com
	[216.82.254.113])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E49CE002A6
	for <yocto@yoctoproject.org>; Wed,  9 Jul 2014 09:48:46 -0700 (PDT)
Received: from [216.82.254.211:21393] by server-17.bemta-7.messagelabs.com id
	83/3A-26369-D627DB35; Wed, 09 Jul 2014 16:48:45 +0000
X-Env-Sender: Seth.Bollinger@digi.com
X-Msg-Ref: server-5.tower-201.messagelabs.com!1404924524!17951089!1
X-Originating-IP: [66.77.174.14]
X-StarScan-Received: 
X-StarScan-Version: 6.11.3; banners=-,-,-
X-VirusChecked: Checked
Received: (qmail 13353 invoked from network); 9 Jul 2014 16:48:45 -0000
Received: from mail.mx4.digi.com (HELO mcl-sms-ns2.DIGI.COM) (66.77.174.14)
	by server-5.tower-201.messagelabs.com with RC4-SHA encrypted SMTP;
	9 Jul 2014 16:48:45 -0000
Received: from MCL-VMS-XCH01.digi.com (10.5.8.49) by mail.mx2.digi.com
	(172.16.1.14) with Microsoft SMTP Server (TLS) id 8.3.342.0;
	Wed, 9 Jul 2014 11:48:46 -0500
Received: from MTK-SMS-XCH01.digi.com ([fe80::cca7:5299:c88e:1c40]) by
	MCL-VMS-XCH01.digi.com ([fe80::5587:821d:f8e4:6578%13]) with mapi id
	14.03.0174.001; Wed, 9 Jul 2014 11:48:44 -0500
From: "Bollinger, Seth" <Seth.Bollinger@digi.com>
To: Saul Wold <sgw@linux.intel.com>, Christopher Larson <clarson@kergoth.com>
Thread-Topic: [yocto] Inadvertent RootFS permission pollution
Thread-Index: AQHPm4NcfbAjuNVqS0iFUu+j4fS2CZuYLt8AgAAYrYD//6yyAA==
Date: Wed, 9 Jul 2014 16:48:43 +0000
Message-ID: <CFE2DC76.990B%seth.bollinger@digi.com>
References: <CFE2BDED.98CE%seth.bollinger@digi.com>
	<CABcZANmVHcuH+rOp11gDLdSovq+_tDRohqEeZZbZHSuGXr0wRg@mail.gmail.com>
	<53BD71F9.20705@linux.intel.com>
In-Reply-To: <53BD71F9.20705@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Microsoft-MacOutlook/14.4.1.140326
x-originating-ip: [10.10.32.65]
x-kse-antivirus-interceptor-info: scan successful
x-kse-antivirus-info: Clean
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Inadvertent RootFS permission pollution
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
X-List-Received-Date: Wed, 09 Jul 2014 16:49:24 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-ID: <1D1C02DC16DE8548AF88D139A3E92F71@digi.com>
Content-Transfer-Encoding: quoted-printable



On 7/9/14, 11:46 AM, "Saul Wold" <sgw@linux.intel.com> wrote:

>On 07/09/2014 08:18 AM, Christopher Larson wrote:
>> On Wed, Jul 9, 2014 at 7:37 AM, Bollinger, Seth
>><Seth.Bollinger@digi.com>
>> wrote:
>>
>>> I recently ran into a problem where I had trouble determining why the
>>> setgid bit was set in my rootfs.  It turns out that debian has this
>>>bit set
>>> on /usr/local (where I was building from), and thus inherited this bit
>>>from
>>> that directory tree.  This surprised me, so I thought I would pass it
>>>along
>>> in case it saves anyone else some time.
>>
>>
>> Ah, yes, I've hit this in the past too, thanks for bringing it up, we'll
>> have to resolve that -- perhaps have bitbake chmod g-s ${TMPDIR} when
>>it's
>> created?
>>
>>
>>
>If you have not already filed a bug for this can some one please do that
>so it does not get lost or forgotten.

Sure thing, I can do it.

Seth


