Return-Path: <opensource@keylevel.com>
Received: from r109.websiteservername.com (r109.websiteservername.com
	[65.39.128.45])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 76C37E0070E
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 09:15:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=keylevel.com;
	s=default; 
	h=To:References:Message-Id:Content-Transfer-Encoding:Date:In-Reply-To:From:Subject:Mime-Version:Content-Type;
	bh=XbmSq2mg5zgRiHtGkWdQeG8lIUF6kRaIqptxDaNu/Ms=; 
	b=Bkgp0nvPghFG3xUJRxvXEeoECXytihRGdFKgPeagOZStG4TC2cej6PHB0m1uIW6gnYELfnOce0oy9CXAzzfjWpyyHlhGZcooP2ewv3x3BvrMaatMQnuIqcNsJqgPiacf;
Received: from [109.224.129.17] (port=64006
	helo=macbook-pro.durham.keylevel.com)
	by r109.websiteservername.com with esmtpa (Exim 4.80)
	(envelope-from <opensource@keylevel.com>) id 1UE0tM-004Biz-01
	for yocto@yoctoproject.org; Fri, 08 Mar 2013 17:15:36 +0000
Mime-Version: 1.0 (Apple Message framework v1283)
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <BAFC5E37-753E-49F7-833C-5ED17D4662FD@keylevel.com>
Date: Fri, 8 Mar 2013 17:15:33 +0000
Message-Id: <37B64E86-CD79-4B99-89B6-BF6848454438@keylevel.com>
References: <BAFC5E37-753E-49F7-833C-5ED17D4662FD@keylevel.com>
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
X-Mailer: Apple Mail (2.1283)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - r109.websiteservername.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: r109.websiteservername.com: authenticated_id:
	chris.tapp+keylevel.com/only user confirmed/virtual account not
	confirmed
Subject: Re: Licencing OpenSource fonts
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
X-List-Received-Date: Fri, 08 Mar 2013 17:15:37 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable


On 8 Mar 2013, at 10:18, Chris Tapp wrote:

> Sorry if this is off-topic for this list, but I'm hoping that someone =
on here may be able to help with a licensing question.
>=20
> I am working on a document which is to be published using the Google =
'Open Sans' font. This is licensed under an Apache Licence.
>=20
> The licence lists all the 'usual' things to do when distributing / =
modifying the font, but it doesn't say what to do if the font is used.
>=20
> We plan to add something like "This document was typeset using =
OpenSans; this font is distributed under the terms of the Apache licence =
=97 see www.apache.org/licenses/LICENSE-2.0.html" to the =
acknowledgements section of the document. Would we need to go further =
than this?

In the 7 hours it's taken this to get to the list (no ideas where it got =
stuck!) we've changed our words to reflect the information in the font =
itself:

"This document was typeset using Open Sans. Open Sans is a trademark of =
Google and may be registered in certain jurisdictions. Digitized data =
copyright =A9 2010-2011, Google Corporation. Licensed under the Apache =
License, Version 2.0"

Chris Tapp

opensource@keylevel.com
www.keylevel.com




