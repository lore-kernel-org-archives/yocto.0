Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 68E47E013FB
	for <yocto@yoctoproject.org>; Mon,  9 Apr 2012 06:04:10 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B7265F8123F; Mon,  9 Apr 2012 07:04:09 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 144B4F8123E;
	Mon,  9 Apr 2012 07:04:09 -0600 (MDT)
Message-ID: <4F82DE49.4060408@mlbassoc.com>
Date: Mon, 09 Apr 2012 07:04:09 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:11.0) Gecko/20120329 Thunderbird/11.0.1
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <4F821129.2020007@r-finger.com> <4F827F43.3050907@r-finger.com>
In-Reply-To: <4F827F43.3050907@r-finger.com>
Subject: Re: managing layer priorities
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 09 Apr 2012 13:04:10 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-04-09 00:18, Tomas Frydrych wrote:
> On 08/04/12 23:28, Tomas Frydrych wrote:
>> Is there a way to change the priority that a layer assigns itself in its
>> layer.conf? E.g., I want to add meta-oe alongside of meta-yocto, but I
>> want it to have a lower priority than the latter. Currently meta-yocto
>> gives itself "5" and meta-oe "6", I'd like to change this without having
>> to modify meta-oe/conf/layer.conf, but can't find a way to do this.
>
> Never mind, it is possible to override these in the last layer listed in
> BBLAYERS.

How so?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

