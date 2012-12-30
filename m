Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B43F3E004D1
	for <yocto@yoctoproject.org>; Sun, 30 Dec 2012 08:10:56 -0800 (PST)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:50743 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1TpLTT-0004JA-Fp; Sun, 30 Dec 2012 11:10:55 -0500
Date: Sun, 30 Dec 2012 11:10:43 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Bill Traynor <wmat@alphatroop.com>
In-Reply-To: <CAGfZjq5hbEs3LVkN0JYbUzGXrJGyTTtoqvSLx7a24nWj5mft9w@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1212301107480.15769@oneiric>
References: <alpine.DEB.2.02.1212300427410.11574@oneiric>
	<CAGfZjq5hbEs3LVkN0JYbUzGXrJGyTTtoqvSLx7a24nWj5mft9w@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: dev manual is confusing as to whether a layer *must* be named "meta-..."
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
X-List-Received-Date: Sun, 30 Dec 2012 16:10:57 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-777934115-1356883852=:15769"

--8323329-777934115-1356883852=:15769
Content-Type: TEXT/PLAIN; charset=ISO-8859-1
Content-Transfer-Encoding: 8BIT

On Sun, 30 Dec 2012, Bill Traynor wrote:

>
>
>
> On Sun, Dec 30, 2012 at 4:29 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>         section 5.1.1 of dev manual:
>
>       "Folders that are layers begin with the string meta."
>
>         section 5.1.2, immediately afterwards:
>
>       "Traditionally, prepend the name of the folder with the string meta."
>
>         those two statements are somewhat contradictory.
>
>
> The first statement is in a paragraph describing the identification
> of a layer within the Source directory, i.e. its name begins with
> "meta".
>
> The second statement is describing the naming of the folder that
> will contain a new layer, i.e. pre-pend the name with "meta".
>
> I'm not sure I see the contradiction here.  Can you explain?

  the (as i see it) inconsistency is that it's not clear whether a
layer name *must* begin with the prefix "meta-".  if one says that
something happens "traditionally", that suggests it's not mandatory,
simply a matter of custom.

  i'd prefer that that section was explicit.  you can never go wrong
being explicit. :-)

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323329-777934115-1356883852=:15769--
