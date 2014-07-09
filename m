Return-Path: <joe@joenicholson.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 86464E00769; Wed,  9 Jul 2014 08:20:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [193.189.74.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from venus.speedyservers.com (venus.speedyservers.com
	[193.189.74.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 42141E006DB
	for <yocto@yoctoproject.org>; Wed,  9 Jul 2014 08:19:43 -0700 (PDT)
Received: from localhost ([127.0.0.1]:39996 helo=www.joenicholson.co.uk)
	by venus.speedyservers.com with esmtpa (Exim 4.82)
	(envelope-from <joe@joenicholson.co.uk>)
	id 1X4tem-002XJq-UV; Wed, 09 Jul 2014 16:19:41 +0100
MIME-Version: 1.0
Date: Wed, 09 Jul 2014 16:19:40 +0100
From: Joe Nicholson <joe@joenicholson.co.uk>
To: Adam Hughes <Adam.Hughes@polatis.com>
Mail-Reply-To: joe@joenicholson.co.uk
In-Reply-To: <A88E647F34719A4CBBE7FD69260396E2A72861DA@POLSRV001.polatis.com>
References: <d9fb738c0c8d5dd896df819289fe1635@joenicholson.co.uk>
	<A88E647F34719A4CBBE7FD69260396E2A72861DA@POLSRV001.polatis.com>
Message-ID: <1a52c8b7dd7810a2848b831d5877ec22@joenicholson.co.uk>
X-Sender: joe@joenicholson.co.uk
User-Agent: Roundcube Webmail/0.9.5
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - venus.speedyservers.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - joenicholson.co.uk
X-Get-Message-Sender-Via: venus.speedyservers.com: authenticated_id:
	joe@joenicholson.co.uk
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: yocto@yoctoproject.org
Subject: Re: Installing a directory tree of files into the target filesystem
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: joe@joenicholson.co.uk
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 09 Jul 2014 15:20:23 -0000
Content-Type: multipart/alternative;
	boundary="=_f40770afa8c63ec290a9d9c58264a8ac"

--=_f40770afa8c63ec290a9d9c58264a8ac
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8

 

Thanks Adam. 

I don't have any major permissions issues either, so will definitely try
that. I assume I could just explicitly set the permissions on the target
directory as a later step in do_install if needed. 

Thanks also for the link. 

Cheers! 

Joe 

On 2014-07-09 14:56, Adam Hughes wrote: 

> Hi Joe,
> 
>> First post on here :-)
> 
> My first post too.
> 
>> I'd like to create a recipe that copies a whole directory tree of files into a directory on the output filesystem.
> 
> I faced the same problem, and resorted to "cp -r" (after making sure the directory was there using "install -d"). In my case, I didn't need to mess with permissions so I didn't need to full power of install.
> 
> See http://superuser.com/questions/229883/how-is-install-c-different-from-cp [1] for a bit more chapter and verse.
> 
> Cheers,
> 
> Adam

 

Links:
------
[1]
http://superuser.com/questions/229883/how-is-install-c-different-from-cp

--=_f40770afa8c63ec290a9d9c58264a8ac
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Verdana,Geneva,sans-serif'>
<p>Thanks Adam.</p>
<p>I don't have any major permissions issues either, so will definitely try=
 that. &nbsp;I assume I could just explicitly set the permissions on the ta=
rget directory as a later step in do_install if needed.</p>
<p>Thanks also for the link.</p>
<p>Cheers!</p>
<p>Joe</p>
<p>&nbsp;</p>
<p>On 2014-07-09 14:56, Adam Hughes wrote:</p>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px"><!-- html ignored --><!-- head ignored --><!-- me=
ta ignored -->
<pre>Hi Joe,</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px">First post on here :-)</blockquote>
<pre>My first post too.</pre>
<blockquote type=3D"cite" style=3D"padding-left:5px; border-left:#1010ff 2p=
x solid; margin-left:5px">I'd like to create a recipe that copies a whole d=
irectory tree of files into a directory on the output filesystem.</blockquo=
te>
<pre>I faced the same problem, and resorted to "cp -r" (after making sure t=
he directory was there using "install -d").  In my case, I didn't need to m=
ess with permissions so I didn't need to full power of install.

See <a href=3D"http://superuser.com/questions/229883/how-is-install-c-diffe=
rent-from-cp">http://superuser.com/questions/229883/how-is-install-c-differ=
ent-from-cp</a> for a bit more chapter and verse.

Cheers,

Adam

</pre>
</blockquote>
<p>&nbsp;</p>
<div>&nbsp;</div>
</body></html>

--=_f40770afa8c63ec290a9d9c58264a8ac--
