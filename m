Return-Path: <joe@joenicholson.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D61BBE00744; Wed,  9 Jul 2014 05:10:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,FROM_12LTRDOM,
	HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [193.189.74.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0019]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 FROM_12LTRDOM From a 12-letter domain
X-Greylist: delayed 1202 seconds by postgrey-1.32 at yocto-www;
	Wed, 09 Jul 2014 05:09:55 PDT
Received: from venus.speedyservers.com (venus.speedyservers.com
	[193.189.74.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE598E0073C
	for <yocto@yoctoproject.org>; Wed,  9 Jul 2014 05:09:55 -0700 (PDT)
Received: from localhost ([127.0.0.1]:33883 helo=www.joenicholson.co.uk)
	by venus.speedyservers.com with esmtpa (Exim 4.82)
	(envelope-from <joe@joenicholson.co.uk>)
	id 1X4qNi-001tR3-Rq; Wed, 09 Jul 2014 12:49:51 +0100
MIME-Version: 1.0
Date: Wed, 09 Jul 2014 12:49:50 +0100
From: Joe Nicholson <joe@joenicholson.co.uk>
To: yocto@yoctoproject.org
Mail-Reply-To: joe@joenicholson.co.uk
Message-ID: <d9fb738c0c8d5dd896df819289fe1635@joenicholson.co.uk>
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
Subject: Installing a directory tree of files into the target filesystem
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
X-List-Received-Date: Wed, 09 Jul 2014 12:10:16 -0000
Content-Type: multipart/alternative;
	boundary="=_059d46eadc07e4a510e40e0910ea285b"

--=_059d46eadc07e4a510e40e0910ea285b
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=UTF-8

 

Hi Guys 

First post on here :-) 

I'd like to create a recipe that copies a whole directory tree of files
into a directory on the output filesystem. There's nothing to build
here... it's just a web application with html files, image files, .js
files, etc. 
What would be the best way of doing this?
I can see that a small number of files and directories are installed
individually using 'install' and 'install -d', is there an equivalent
that just copies a whole tree of files into place? 

Cheers! 

Joe 

 

--=_059d46eadc07e4a510e40e0910ea285b
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset=UTF-8

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN">
<html><body style=3D'font-family: Verdana,Geneva,sans-serif'>
<p>Hi Guys</p>
<p>First post on here :-)</p>
<p>I'd like to create a recipe that copies a whole directory tree of files =
into a directory on the output filesystem. &nbsp;There's nothing to build h=
ere... it's just a web application with html files, image files, .js files,=
 etc. &nbsp;<br />What would be the best way of doing this?<br />I can see =
that a small number of files and directories are installed individually usi=
ng 'install' and 'install -d', is there an equivalent that just copies a wh=
ole tree of files into place?</p>
<p><span style=3D"font-family: 'Lucida Grande', Verdana, Arial, Helvetica, =
sans-serif;">Cheers!</span></p>
<p><span style=3D"font-family: 'Lucida Grande', Verdana, Arial, Helvetica, =
sans-serif;">Joe</span></p>
<p>&nbsp;</p>
<div>&nbsp;</div>
</body></html>

--=_059d46eadc07e4a510e40e0910ea285b--
