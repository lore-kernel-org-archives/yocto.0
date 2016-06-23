Return-Path: <chris@2net.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3A57E00C55; Thu, 23 Jun 2016 05:58:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: ***
X-Spam-Status: No, score=3.8 required=5.0 tests=BAYES_50,HTML_MESSAGE,
	HTML_MIME_NO_HTML_TAG, MIME_HTML_ONLY, MISSING_MIMEOLE,
	RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [217.72.192.75 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.5000]
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
	*  0.4 HTML_MIME_NO_HTML_TAG HTML-only message, but there is no HTML tag
	*  1.9 MISSING_MIMEOLE Message has X-MSMail-Priority, but no X-MimeOLE
X-Greylist: delayed 312 seconds by postgrey-1.32 at yocto-www;
	Thu, 23 Jun 2016 05:58:05 PDT
Received: from mout.kundenserver.de (mout.kundenserver.de [217.72.192.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B093E00C4B
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2016 05:58:05 -0700 (PDT)
Received: from [10.113.67.13] ([94.197.121.71]) by mrelayeu.kundenserver.de
	(mreue103) with ESMTPSA (Nemesis) id 0MP2NL-1bKix33MFr-006Qes;
	Thu, 23 Jun 2016 14:52:43 +0200
Date: Thu, 23 Jun 2016 13:28:20 +0200
Message-ID: <ba5a35b2-3d49-436c-b64b-f4c318757da4@email.android.com>
X-Android-Message-ID: <ba5a35b2-3d49-436c-b64b-f4c318757da4@email.android.com>
In-Reply-To: <alpine.LFD.2.20.1606230625380.5059@localhost.localdomain>
From: chris simmonds <chris@2net.co.uk>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Importance: Normal
X-Priority: 3
X-MSMail-Priority: Normal
MIME-Version: 1.0
X-Provags-ID: V03:K0:t/13Nv/fGGtndMfooUFnXG2k1ZBNlklQC4GYIAp7aY3ghzx2icQ
	muki+/3DQw2KbpNu7UdENcHeDEeHJzDJAil70f73Cm/AXJwptf1D0Sso4D2D87EbIQNAu75
	DRBlflFzR/ZaT6xayG9uHIaK6pmvqA+DQwQTXn7KosqrLLenEHiH94W5PFegFwqWLCosYcn
	789gFx1FaVIw8+URbw8zw==
X-UI-Out-Filterresults: notjunk:1;V01:K0:avNKERnV0tY=:aaHDKMQDtXjLLHJLUmE3Na
	PqS6ODWnjEIcIIJ8BilDK0UapHZ+1if/9P2btVG9ii4YeIZxQ7AmdGOTRE114Ur1HoV9+8nm8
	7/zVVhPJExgSCJIAVhTptO0/AAR+EFvMyHz9PLTPa91iARBuic+8T0UV3kTNv2TfxVZMox7ae
	WG2TME/nZeNpPgHWyPxFmhcqIq9ipW22wxxnLOoT9uxoMzqeAQIJ2gi6hjA/G9Z98Ea5uCVOv
	eZ7klgH89/wXk+ky48ZH1j943JYmfzjTwipEzuvhBk9IoWm8+aUIjNt9OndOYR4NwAwB56H87
	SuqLX3LKr0WtBGxPM9rqHKgjdX6hWQU8dK310uCns6gOzi82I/1HsLpShkgLOy2mYErwJ1vlF
	qguwIaOdxY6McFDREtIN2kQFZWBHzmwLJ/nJ67QBrMFXZ/CuBjcCOCW8jMQxOO9mqjRdBpSJW
	1kL7f0eTNdhPwpfNJnBJuIYAOVBcfNsm8w9a3wWNA98hF85f+RUz3hs4fxHYKuKGYcGpfhPVo
	PqfhyNuRF2ouIm+a9o1ahR60I6V/fPtozVQg4fWiYHyclhlOkdK2WfuAbUjLSgnHfHqz3Fhvh
	lG2MrZuaW1AV/2oi3QoXSdk3BIbX3VexpuBpJrMw/pFJ45eO3iaz684V2caxf+wm/l4SN++4k
	zgOg8u/ue2bfx4Qb2cuygnYy7zQ63JKUoZ8LWDFGKXlsvlLkzzrFwlgFOS43m6YRkXixso4/0
	/99SUJArZfw2GmCQU1cawnctz3yBsaMH+zChsA==
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: is there a recipe for building a ppc-based installer image?
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
X-List-Received-Date: Thu, 23 Jun 2016 12:58:08 -0000
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: base64

PHAgZGlyPSJsdHIiPlJvYmVydCw8L3A+CjxwIGRpcj0ibHRyIj5IYXZlIHlvdSBsb29rZWQgYXQg
dXNpbmcgZXhpc3RpbmcgdXBkYXRlcnMgc3VjaCBhcyBtZXRhLXN3dXBkYXRlIG9yIHN3dXBkIG9y
IHJhdWM/IEknbSBzdXJlIG9uZSBvZiB0aG9zZSB3b3VsZCBkbyB3aGF0IHlvdSB3YW50LjwvcD4K
PHAgZGlyPSJsdHIiPlJnZHMsIENocmlzIDwvcD4K


