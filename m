Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADB09E006B6
	for <yocto@yoctoproject.org>; Sun,  1 Dec 2013 06:50:14 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id D10CDF811ED; Sun,  1 Dec 2013 07:50:13 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 009A6F811E5;
	Sun,  1 Dec 2013 07:50:12 -0700 (MST)
Message-ID: <529B4CC6.8090501@mlbassoc.com>
Date: Sun, 01 Dec 2013 07:50:46 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.1.1
MIME-Version: 1.0
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
References: <529B4140.2040801@mlbassoc.com>
	<CAP71Wjw=Zaf9n_yiXG1-=Fp5rNSPYV9xEsEN6HEwO841xwWneA@mail.gmail.com>
In-Reply-To: <CAP71Wjw=Zaf9n_yiXG1-=Fp5rNSPYV9xEsEN6HEwO841xwWneA@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Very strange append issue
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
X-List-Received-Date: Sun, 01 Dec 2013 14:50:18 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-12-01 07:37, Nicolas Dechesne wrote:
>
> On Sun, Dec 1, 2013 at 3:01 PM, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     I can see by the copied comment (#) lines that this fragment
>     is coming exactly from 'installer_0.0.bbappend'
>
>     This looks totally wrong to me.  Am I missing something (and
>     it should work this way)??
>
>
> are you on master? a 'somehow' similar issue (e.g. problems with .bbappends) was reported on the list earlier this week:
>
> http://www.mail-archive.com/yocto@yoctoproject.org/msg16836.html

Yes, I am using master: 937663bdeca6d6479e0db2a9578588b1aa20222c

At least I am not hallucinating!

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

