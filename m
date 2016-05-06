Return-Path: <bartosz.woronicz@nokia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 366AAE006D8; Fri,  6 May 2016 10:12:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	HTML_MESSAGE, RCVD_IN_DNSWL_NONE, SPF_HELO_PASS,
	T_DKIM_INVALID autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.105 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
X-Greylist: delayed 7167 seconds by postgrey-1.32 at yocto-www;
	Fri, 06 May 2016 10:12:18 PDT
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0105.outbound.protection.outlook.com [104.47.2.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62AD9E00343
	for <yocto@yoctoproject.org>; Fri,  6 May 2016 10:12:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nokia.onmicrosoft.com; 
	s=selector1-nokia-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=/e8EFymie266YcAuHPpy/fX9+vBDWKMnBFmY00ohXAA=;
	b=Pozi/yZCwXZcKyWBhfe0JPUUkFg6wPjzr/unFbF+D0krEzS/JYOvgKKkOPt+wH+ych4jKulQtVgBl1DLkS8WJCqTvAfhkkVzJ//OB1t4Rb+jRAy12vIeuf0xJiVq52fcN2pKSFO1RScXuMH1KKtZCCwAS/u3rym5IYAGzp8HO60=
Authentication-Results: yoctoproject.org; dkim=none (message not signed)
	header.d=none; yoctoproject.org;
	dmarc=none action=none header.from=nokia.com; 
Received: from [10.154.117.23] (131.228.2.23) by
	HE1PR07MB1051.eurprd07.prod.outlook.com (10.162.28.13) with Microsoft
	SMTP Server (TLS) id 15.1.477.8; Fri, 6 May 2016 14:39:02 +0000
To: Chris Z. <winotu.email@gmail.com>
References: <CAEjjReLxsQAPSp9J+LejheRv=oxzC4nZfLo_Q+tgZf+Dhb00Tg@mail.gmail.com>
	<CAEjjRe+wKU5Aa3BgTuFPLTLdCu+LCMqS=APqUGZXetWV4bw6wA@mail.gmail.com>
	<1C3E490A-CAB1-4487-AED1-5919690AB6D9@gmail.com>
From: "Woronicz, Bartosz ( NSN - PL/Wroclaw)" <bartosz.woronicz@nokia.com>
Message-ID: <572CAC7F.8090602@nokia.com>
Date: Fri, 6 May 2016 16:38:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <1C3E490A-CAB1-4487-AED1-5919690AB6D9@gmail.com>
X-Originating-IP: [131.228.2.23]
X-ClientProxiedBy: HE1PR02CA0044.eurprd02.prod.outlook.com (10.163.170.12) To
	HE1PR07MB1051.eurprd07.prod.outlook.com (10.162.28.13)
X-MS-Office365-Filtering-Correlation-Id: 6bbfa3c5-443d-4388-78ba-08d375bc2b44
X-Microsoft-Exchange-Diagnostics: 1; HE1PR07MB1051;
	2:xZS7mAan88Qe/fTIDvnVoLgW60sEYc1s/BXZr0wg/Gj1JC1jNFE2XuXHy+FlUERAc7gOJ1vUK6pwxkuNogFwCDOfA4SelwAQMJM0PpWaaJAu67DJpZ249w10vs7jYcbfpWdzaKNpqiviajdaSvLRlGHyAqLbRqOALzaqEgPfoZLY9+T0QA9Fzq/x1GdSzm4n;
	3:MXxIfDBfQg2TIMq+r+soUGN1lgJzV/xiY4FgksP1sJRMcxKRakBqcPaF5idsN6XYPWhThWBopgU78GHe4+W3jTQRvUB/x3/lfT6xzOA2CLv0aWMfKahmcH5TgO5jyd9d
X-Microsoft-Antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:HE1PR07MB1051;
X-Microsoft-Exchange-Diagnostics: 1; HE1PR07MB1051;
	25:+NwQ+LcLTe68emB4apMP5ARNRNs5YgqgdrKHrPRpuwof/eJKKEAIxFwFKWITh4DBbqvL4LoLOKi3P5I1D3gKifo40rDXOuMJLhHLoXiCN0OjVIF/cx9Y2Ym8U9ucBggs+hqmTjFVPxzz0WC5ZVJcJYVLm3XVrMR3p/lrB5hEwLT97VH/Zq8KGT1ZkvduLFFp5E+1YiiWqgbqi0uMhyzeI+TgQUG799f/iKgHzNa3e6ZgRQMN1mi52WSROZ3lJGhOWONfLAYPz5K/6ivhoWwHNFiEeeHvr3dOZSZQI/QxAPzdYLuAtj6FlDZCxpRiS8d8A03OifmD8SJCYxOuqp+K7kERh+VhakAmo2OahodP3dzvd+boRW4EnqSab4iWDPjXK2AuhUuPTHNBpM7PbTb4x7b63EFcYgg8v2nyF4TiPNvcR85Rv2sTVtjd5Y6zApS0WpawG2PrrMDTCIPNrHVYSukW+UQROnnF5RbmYlClL7EClBw1NbWwLpmHiIxynBxmMz5YcAUZOKcUQ9UZkvmhZmv8pfOnp//sK/dXGaMD9aA6sS2dCS/g9dl8CG2hJ7/rSiiydAHmSgjIdDkC8WCf/BzuRR5b5mnQaqgQ1hWegfgTMiMl6j7FcRUhjxwxVct/sqNhbcY4ANSYgCPmV3TOffJYF+uqXyrVBKulLsvTOxEDUOTvEoGmiN0gQ9vvtdkP2jloKHyPutEIBagdIVy7y5vCxPeJTLsdgrT8yWe0Q4i607ULabIoA8RbR/NaLxP1P5XT3uWFsCduw0uNdBr0MhQbvE9COAC750chdsnW71H7eQuBzp+KgdVEcMLZyrtjAoZj6tXNjoEaasm27X/ZQA==
X-Microsoft-Exchange-Diagnostics: 1; HE1PR07MB1051;
	20:5XGaA3/THyX32W4cGe4/T5mGChZBIP8+XalQ0PMnWVO3+P99d1fInqRqf9LGq5PylCsR5J4rZHj1Q10tHikeDNDf+zAi8+sSc9WvLT3AgTw2n7Ef5cbmy1iquc9/u0vTrXceAbWuZL+a0p4oQS+gP+Ip5N+bOF4l/jbdng5bkfNdIf9Ptrebr2LrrES3qrYeRfMfnPkMsNI2SwvcvGFgcSgxL4dz3q7zZAXDUisIx+jTudbqg2oqbpJ0SMqRVpG9ZAs37YTg4WhsFnRnwUv/hdX2wLkb27PJDwDfdVEKrIFrZM/VbI89qShe8seYuDogYFN531rAD/wlMPhblGofj4LSPoVcIUDirvKmiCcYlJ77zYDtLzKnxHlqE8ltS00++hCy0dZcD8gLqarvYzcVx2tV6N3On7RgWclK5x5Fj32g6Egf+jD2D4YnSh81r9QMUuWdIInXXRGtM9QkXPOQzg63wsfU4+8zYg9V6iw7IbjU8GbDovyUfnL1Ob30mTT2;
	4:eKjXsr8Q2spMV2IAoyZhIlli0q1VAKl38HJVX8kEGWkrRBx2byGwm4x+aQ7C82BwxkIWz/IWckmm5ab/AZq4LMaoyhdaHovdWJppUVIoGpLr4qt3SY+odx+kb1mg2ZbfGvih5IAc+IgvoXaNuF8jh4RtH4HlSABIOw9ByksWVc7VUSbQ9KJAk0ingxpR7UYCVfTk7f/HiB2ec+qVOjf+rrSJhsbrJFSXlOI2KDQ+LCQr8Q8nGp0TENu81QUVzlHTVbLyEQ1hGs1iHvxp/gHG2I69zTnTqLE+jWMh+zJabqp3hQt7chcmpBrROzbYyclEtNAFIcEYpZrzjOtdLKmTi9W5+JE2Zox3x53ddhDX09ojJ1XzfpX2CPcb1+bbz/1z
X-Microsoft-Antispam-PRVS: <HE1PR07MB1051EB9E2BA9770AAC0B1E3C817D0@HE1PR07MB1051.eurprd07.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:HE1PR07MB1051; BCL:0; PCL:0; RULEID:; SRVR:HE1PR07MB1051; 
X-Forefront-PRVS: 09347618C4
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6049001)(377454003)(71364002)(24454002)(36756003)(80316001)(33656002)(19580405001)(84326002)(42186005)(512944002)(87266999)(50986999)(19580395003)(65816999)(83506001)(54356999)(76176999)(3846002)(4326007)(586003)(6116002)(66066001)(86362001)(2906002)(65806001)(65956001)(189998001)(110136002)(4001350100001)(92566002)(270700001)(81166005)(5008740100001)(64126003)(5004730100002)(77096005)(2950100001)(15975445007)(19617315012);
	DIR:OUT; SFP:1102; SCL:1; SRVR:HE1PR07MB1051; H:[10.154.117.23];
	FPR:; SPF:None; MLV:sfv; LANG:en; 
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; HE1PR07MB1051;
	23:tdlmGgOC0JRJGcVJZav3QDeklrVeiKuPWOKJT5kCJ?=
	=?us-ascii?Q?orz+/34KVRNsnDgs81jYo0bzmINY/LWuvm7j6jKoZptNQJeh8ChosHKlGyof?=
	=?us-ascii?Q?R1/ZxKe7cH/dnvR84Tm6K46w3LBGW/NT/w5D+uHVNKHNsEveMyHKjNSrRbAV?=
	=?us-ascii?Q?gtIgUfXsgPi0rpr17L7GHaiyV/bk+LRrK7ar9lH3hOzt8MAFlweOZyYU42ce?=
	=?us-ascii?Q?IqWwssWxxnDRnWHxwtzuK2Y+lzJPWVUKQ4DuGVybgvWlOpdPsu9L+bzqV2bp?=
	=?us-ascii?Q?wxYsFZrh1+FSnRWS1W2Myds/LS+XB0hCf8qsYje0E0JFjlxi5Hvg5ejpsLjQ?=
	=?us-ascii?Q?V/x2qIQo/Ir4fyk6ezlohVFFfrj0Z36HL5SuOn3Ct8BaACuKFTMDOgr5GpZr?=
	=?us-ascii?Q?fzSaDbTi/BBhOtddFuJrzlU+dYa4khawKDNr8P5qoU3Xl1QktgfZKzYwPZJM?=
	=?us-ascii?Q?DlPoW87wQBWl00IlyAg47qTRPrH6r7X8xJA5FKg6anYn8Js76hmFVB/hLm9j?=
	=?us-ascii?Q?NbZGShjR3ZHQ2PxgY9xoP9dFKJIutwqi5WvdimQjyUkJ2vfvE08QsCEQj2Et?=
	=?us-ascii?Q?HzACSuMoSnOiXsiT41Y/MA2NksL8VTjvx1fQlS+agP9sZAiRK1dsrgWSd6mC?=
	=?us-ascii?Q?zcBA48IbZL2hxYoAV7CjjUTJBtQGUPQ3+zRgjtBOdyZCTuX/52PO3S/V60Pg?=
	=?us-ascii?Q?3PtVe/FUYHtN9gmG3cOR4wF0ccMp7AiaIJsY21T9osfz64qjO4sdObCeWhsW?=
	=?us-ascii?Q?tlE71tUnWazXaJdTTeLt9yrSzLYwbe1jSBAIEDvciZLbWEtgWXGHLOFa3ZEN?=
	=?us-ascii?Q?CYsFIk2y1CTSS8WD/ODnHkTTMFysS0RNquBrC1XKP+TfDsxIaODK5OtWmqaN?=
	=?us-ascii?Q?6W73FNh5bICza7qwSnYyPjs7D4t0JmlXsaiZll0mDZgH3QPUpSJQPWRlLphQ?=
	=?us-ascii?Q?vOq1MW/nRdVkXeM3DQbgl3NjlDGE3tkQImuH9GjJirp2uqXf331Fi3NF8dQd?=
	=?us-ascii?Q?0ttstCX/5flM0eJBXMxNeem5OzQ8K2SarpCeXeNblAlNxjcXy3q3kBvtGjZT?=
	=?us-ascii?Q?3548Hv1gijOfjf4Kt7wlEJUkmoAk4jikdlDHFm/+WnCFwQ4ew=3D=3D?=
X-Microsoft-Exchange-Diagnostics: 1; HE1PR07MB1051;
	5:Feop92LF5dmCwsp9OfgSFYr3FCKIVBpCnhrKPQ/muDePK+Pg5AZXPzILKf5wJcCZxoSceAoNJ+ExG1ZcywNSRbztSyBA11arIrg7hjf6b5dnOPzbOLKdtOmSmM927DyZl2U0+QLzu6HJlSXVlERp2w==;
	24:iCjPGOf2Y363jBrhT1WkuIdnSrNDMMcR2vujcXmCxhQ6ponNOab+hMQA+6FyjEy9/mm/Bnsr79Ab4czMB9+3NYKjPVf1h4yR4FjNxCN3nB0=;
	7:4LTy4wz8TIb2PGhwfzxzFD+kt6SIMlyYmVsO797Tb4ZK9bSWgKUlSMuJ2d/6/Fs2dRcNuEJnZmHNR2RnxpsUIXXuBcypTr9rV2af0QaveTpibFA00TQcJRUcsGQzStSc1rYhBBkJle0PKI60055iddYQvLTBlYpAAdGWarZuBBO2EozO16BWpOojdaq0OCGh
SpamDiagnosticOutput: 1:23
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: nokia.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 06 May 2016 14:39:02.7549 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1PR07MB1051
Cc: yocto@yoctoproject.org
Subject: Re: Native packages compiled with host gcc set in PATH and with LD_LIBRARY_PATH to libstd++
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
X-List-Received-Date: Fri, 06 May 2016 17:12:23 -0000
Content-Type: multipart/alternative;
	boundary="------------090705020105040401040206"

--------------090705020105040401040206
Content-Type: text/plain; charset="windows-1252"; format=flowed
Content-Transfer-Encoding: 7bit


Kind regards,
Bartosz Woronicz
Engineer, Software Configuration (SCM)
Nokia Networks - PL/Wroclaw

On 06.05.2016 15:55, EXT Khem Raj wrote:
>
>> On May 6, 2016, at 1:43 AM, Chris Z. <winotu.email@gmail.com 
>> <mailto:winotu.email@gmail.com>> wrote:
>>
>> Hi,
>>
>> Any tips ?
>
> you need to insert your non-standard install of gcc-4.9 and glibc into 
> OE build via BUILD_CFLAGS
> and prepending it to your PATH variable that bitbake will see.
I use such hack in local.conf
BUILD_LDFLAGS_append_class-native = "${BB_EXT_ENV_GLIBCXX_RPATH}"


where BB_EXT_ENV_GLIBCXX_RPATH is

$ export BB_EXT_ENV_GLIBCXX_RPATH="$(echo "$LD_LIBRARY_PATH" | tr ':' 
'\n' | grep gcc | xargs -I % echo " -Wl,-rpath,%" | tr '\n' ' ')"
in my oe-init-buildenv wrapping script
>
>>
>> On Fri, Mar 4, 2016 at 4:13 PM, Chris Z. <winotu.email@gmail.com 
>> <mailto:winotu.email@gmail.com>> wrote:
>>
>>     Hi,
>>
>>     I have set newer gcc(4.9) in PATH and with proper
>>     LD_LIBRARY_PATH. Default system gcc is 4.4.
>>
>>     Bulding cmake-native fails when bootstrap cmake tries to compile
>>     cmake native binary.
>>
>>     This is due to the fact that bootstrap was compiled with newer
>>     glibcxx and it can't be found in system/host /usr/lib, /usr/lib64
>>     nor in -rpath.
>>
>>     rpath is set to
>>     -Wl,-rpath,${STAGING_LIBDIR_NATIVE} \
>>     -Wl,-rpath,${STAGING_BASE_LIBDIR_NATIVE} \
>>
>>     from BUILD_LDFLAGS var in bitbake.conf which is expand in native
>>     class.
>>
>>     What is the correct approach to fix this ? Or I shouldn't use gcc
>>     from PATH for compilation of native packages ?
>>
>>
>> -- 
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org <mailto:yocto@yoctoproject.org>
>> https://lists.yoctoproject.org/listinfo/yocto
>
>
>


--------------090705020105040401040206
Content-Type: text/html; charset="windows-1252"
Content-Transfer-Encoding: 8bit

<html>
  <head>
    <meta content="text/html; charset=windows-1252"
      http-equiv="Content-Type">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    <br>
    <pre class="moz-signature" cols="72">Kind regards,
Bartosz Woronicz
Engineer, Software Configuration (SCM)
Nokia Networks - PL/Wroclaw</pre>
    <div class="moz-cite-prefix">On 06.05.2016 15:55, EXT Khem Raj
      wrote:<br>
    </div>
    <blockquote
      cite="mid:1C3E490A-CAB1-4487-AED1-5919690AB6D9@gmail.com"
      type="cite">
      <meta http-equiv="Context-Type" content="text/html;
        charset=us-ascii">
      <br class="">
      <div>
        <blockquote type="cite" class="">
          <div class="">On May 6, 2016, at 1:43 AM, Chris Z. &lt;<a
              moz-do-not-send="true"
              href="mailto:winotu.email@gmail.com" class=""><a class="moz-txt-link-abbreviated" href="mailto:winotu.email@gmail.com">winotu.email@gmail.com</a></a>&gt;
            wrote:</div>
          <br class="Apple-interchange-newline">
          <div class="">
            <div dir="ltr" class="">
              <div class="">Hi,<br class="">
                <br class="">
              </div>
              Any tips ?<br class="">
            </div>
          </div>
        </blockquote>
        <div><br class="">
        </div>
        <div>you need to insert your non-standard install of gcc-4.9 and
          glibc into OE build via BUILD_CFLAGS</div>
        <div>and prepending it to your PATH variable that bitbake will
          see.</div>
      </div>
    </blockquote>
    I use such hack in local.conf<br>
    BUILD_LDFLAGS_append_class-native = "${BB_EXT_ENV_GLIBCXX_RPATH}"<br>
    <br>
    <br>
    where BB_EXT_ENV_GLIBCXX_RPATH is<br>
    <br>
    $ export BB_EXT_ENV_GLIBCXX_RPATH="$(echo "$LD_LIBRARY_PATH" | tr
    ':' '\n' | grep gcc | xargs -I % echo " -Wl,-rpath,%" | tr '\n' '
    ')"<br>
    in my oe-init-buildenv wrapping script<br>
    <blockquote
      cite="mid:1C3E490A-CAB1-4487-AED1-5919690AB6D9@gmail.com"
      type="cite">
      <div><br class="">
        <blockquote type="cite" class="">
          <div class="">
            <div class="gmail_extra"><br class="">
              <div class="gmail_quote">On Fri, Mar 4, 2016 at 4:13 PM,
                Chris Z. <span dir="ltr" class="">&lt;<a
                    moz-do-not-send="true"
                    href="mailto:winotu.email@gmail.com" target="_blank"
                    class=""><a class="moz-txt-link-abbreviated" href="mailto:winotu.email@gmail.com">winotu.email@gmail.com</a></a>&gt;</span>
                wrote:<br class="">
                <blockquote class="gmail_quote">
                  <div dir="ltr" class="">
                    <div class="">
                      <div class="">
                        <div class="">
                          <div class="">
                            <div class="">
                              <div class="">Hi,<br class="">
                                <br class="">
                              </div>
                              I have set newer gcc(4.9) in PATH and with
                              proper LD_LIBRARY_PATH. Default system gcc
                              is 4.4.<br class="">
                              <br class="">
                            </div>
                            Bulding cmake-native fails when bootstrap
                            cmake tries to compile cmake native binary.<br
                              class="">
                            <br class="">
                          </div>
                          This is due to the fact that bootstrap was
                          compiled with newer glibcxx and it can't be
                          found in system/host /usr/lib, /usr/lib64 nor
                          in -rpath.<br class="">
                          <br class="">
                        </div>
                        rpath is set to<br class="">
                                               
                        -Wl,-rpath,${STAGING_LIBDIR_NATIVE} \<br
                          class="">
                                               
                        -Wl,-rpath,${STAGING_BASE_LIBDIR_NATIVE} \<br
                          class="">
                        <br class="">
                      </div>
                      from BUILD_LDFLAGS var in bitbake.conf which is
                      expand in native class.<br class="">
                      <br class="">
                    </div>
                    What is the correct approach to fix this ? Or I
                    shouldn't use gcc from PATH for compilation of
                    native packages ?<br class="">
                  </div>
                </blockquote>
              </div>
              <br class="">
            </div>
            -- <br class="">
            _______________________________________________<br class="">
            yocto mailing list<br class="">
            <a moz-do-not-send="true"
              href="mailto:yocto@yoctoproject.org" class="">yocto@yoctoproject.org</a><br
              class="">
            <a class="moz-txt-link-freetext" href="https://lists.yoctoproject.org/listinfo/yocto">https://lists.yoctoproject.org/listinfo/yocto</a><br class="">
          </div>
        </blockquote>
      </div>
      <br class="">
      <br>
      <fieldset class="mimeAttachmentHeader"></fieldset>
      <br>
    </blockquote>
    <br>
  </body>
</html>

--------------090705020105040401040206--
