Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8603AE007ED
	for <yocto@yoctoproject.org>; Thu,  9 Jan 2014 11:19:09 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 385ACF811E9; Thu,  9 Jan 2014 12:19:08 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9DEE2F811DE;
	Thu,  9 Jan 2014 12:19:05 -0700 (MST)
Message-ID: <52CEF62A.8000209@mlbassoc.com>
Date: Thu, 09 Jan 2014 12:19:06 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAM1ZcoXaj-ohT8bMn90D10FzT7cRt-Yt=e_DjHs=Q69LPKHgWw@mail.gmail.com>
In-Reply-To: <CAM1ZcoXaj-ohT8bMn90D10FzT7cRt-Yt=e_DjHs=Q69LPKHgWw@mail.gmail.com>
Subject: Re: package various recipes
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
X-List-Received-Date: Thu, 09 Jan 2014 19:19:09 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2014-01-09 12:02, Katu Txakur wrote:
> Hi,
>
> I have a few recipes one.bb <http://one.bb>, two.bb <http://two.bb>, three.bb <http://three.bb> that I bitbake to get ipk packages. I would like to create a recipe all.bb
> <http://all.bb> that creates a single all.ipk package that will install one, two and three binaries files in the system. How can I do that?

Look at packagegroups - there are many examples in OE-core.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

