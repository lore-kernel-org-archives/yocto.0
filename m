Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C05CE0144E
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 06:27:52 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id A327FF811F0; Thu, 27 Jun 2013 07:27:52 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 336D8F811ED;
	Thu, 27 Jun 2013 07:27:51 -0600 (MDT)
Message-ID: <51CC3DDC.9060209@mlbassoc.com>
Date: Thu, 27 Jun 2013 07:27:56 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130510 Thunderbird/17.0.6
MIME-Version: 1.0
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
References: <51CC3174.5020304@mlbassoc.com>
	<CAP71WjxSYZ0gs8bYw8uPsdHZpEbnU8nqCwBf=kpg0Er5efDycg@mail.gmail.com>
In-Reply-To: <CAP71WjxSYZ0gs8bYw8uPsdHZpEbnU8nqCwBf=kpg0Er5efDycg@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Removing a package from an image
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
X-List-Received-Date: Thu, 27 Jun 2013 13:27:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-06-27 06:57, Nicolas Dechesne wrote:
> On Thu, Jun 27, 2013 at 2:35 PM, Gary Thomas <gary@mlbassoc.com> wrote:
>> I'm using one of the machines from meta-fsl-arm (i.MX6) which
>> has this setting in the MACHINE.conf:
>>    MACHINE_EXTRA_RRECOMMENDS_append_mx6 = " imx-audio"
>>
>> While this is reasonable for most of these boards, I have one
>> which has no audio and I'd like to leave this package (and all
>> that it pulls with it) out of my images.
>>
>> I tried using this in my image recipe with no joy:
>>    MACHINE_EXTRA_RRECOMMENDS := "${@oe_filter_out('imx-audio',
>> '${MACHINE_EXTRA_RRECOMMENDS}', d)}"
>>
>> How can I "filter out" this extra/unwanted/setting?
>
> you can use BAD_RECOMMENDATIONS variable to list packages that must be
> filtered out during image creation. however BAD_RECOMMENDATIONS does
> not work with all IMAGE_FSTYPES. I think it only works with ipk for
> now.
>

I am using ipk and this does seem to work, thanks.

I'd still be interested to know if there is a more general mechanism
I can use for such things in the future.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

