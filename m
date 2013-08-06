Return-Path: <ml@communistcode.co.uk>
Received: from owm.eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69E87E003F8
	for <yocto@yoctoproject.org>; Tue,  6 Aug 2013 08:00:58 -0700 (PDT)
Message-ID: <52010FA8.1000101@communistcode.co.uk>
Date: Tue, 06 Aug 2013 16:00:56 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130625 Thunderbird/17.0.7
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <520108A5.7090806@mlbassoc.com>
	<52010B1F.3060901@communistcode.co.uk>
	<52010D4E.4090009@windriver.com>
In-Reply-To: <52010D4E.4090009@windriver.com>
Subject: Re: Sending mail from embedded device
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ml@communistcode.co.uk
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 06 Aug 2013 15:01:01 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

On 06/08/13 15:50, Mark Hatle wrote:
> On 8/6/13 9:41 AM, Jack Mitchell wrote:
>> On 06/08/13 15:31, Gary Thomas wrote:
>>> My embedded device needs to send out email.
>>>
>>> I've looked around a bit and I don't see any recipes for a
>>> mail sender, e.g. sendmail or postfix, for Yocto (OE-core).
>>>
>>> Have I missed something?  Does anyone have any suggestions?
>>>
>>> Surely my application isn't the first that wants to send email...
>>>
>>
>> Would recipes-extended/msmtp do the job? Do you need to run the whole
>> mail stack or is pushing out emails to an smtp server adequate?
>>
> 
> msmtp is provided specifically to be able to send email out.  It should
> produce a binary called "sendmail" that is capable of simply sending
> email (and conforming to LSB requirements.)
> 
> --Mark

Colour me impressed, I didn't realise it was also a drop-in for sendmail.


-- 
  Jack Mitchell (jack@embed.me.uk)
  Embedded Systems Engineer
  Cambrideshire, UK
  http://www.embed.me.uk
--

