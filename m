Return-Path: <opensource@keylevel.com>
Received: from hosting.adsl24.co.uk (hosting.adsl24.co.uk [84.234.17.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73101E008A4;
	Mon, 24 Feb 2014 13:49:32 -0800 (PST)
Received: from [109.224.171.0] (port=7005 helo=macbook-pro.durham.keylevel.com)
	by hosting.adsl24.co.uk with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.82) (envelope-from <opensource@keylevel.com>)
	id 1WI3P1-0004jG-83; Mon, 24 Feb 2014 21:49:31 +0000
Mime-Version: 1.0 (Mac OS X Mail 7.1 \(1827\))
From: Chris Tapp <opensource@keylevel.com>
In-Reply-To: <20140224192138.GJ15075@marc-desktop>
Date: Mon, 24 Feb 2014 21:49:31 +0000
Message-Id: <74560A04-4D07-491D-9B28-8B8F25D8A22D@keylevel.com>
References: <2081A7FF-759C-444A-A5D8-479DC718591D@keylevel.com>
	<20140224192138.GJ15075@marc-desktop>
To: ferlandm@sonatest.com
X-Mailer: Apple Mail (2.1827)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hosting.adsl24.co.uk
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: hosting.adsl24.co.uk: authenticated_id:
	mail@keylevel.adsl24.co.uk
Cc: meta-intel@yoctoproject.org, Yocto Project <yocto@yoctoproject.org>
Subject: Re: Cedartrail zero-copy texture updates
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
X-List-Received-Date: Mon, 24 Feb 2014 21:49:34 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Marc,

On 24 Feb 2014, at 19:21, Marc Ferland <ferlandm@sonatest.com> wrote:

> On Mon, Feb 24, 2014 at 03:46:07PM +0000, Chris Tapp wrote:
>> I'm trying to get zero-copy GLES textures working using Danny /
>> Cedartrail (PVR) so I can stream video frames into a GLES
>> application.
>>=20
>> Googling hasn't really helped that much with how to do this, but I
>> think I need to use eglCreateImageKHR and a client-side buffer so
>> that glEGLImageTargetTexture2DOES() can be used to bind the texture
>> to an image in memory.
>>=20
>> eglCreatePixmapSurfaceHI() looks like it allows client memory to be
>> used as a colour-buffer which can be passed to eglCreateImageKHR,
>> but I can't seem to be able to create a context which supports
>> pixmaps.
>>=20
>> Are there any examples out there to show how to put all of this
>> together?
>>=20
> Documentation about this stuff is indeed sparse and hard to find!
>=20
> I once tried (and failed!) to do something similar on crownbay but the
> texture data was mapped to a polygon mesh (no video acceleration
> stuff).
>=20
> The documentation that I came across mentionned using the
> GL_TEXTURE_STREAM_IMG extension to implement the zero-copy texture
> transfers. Maybe the same extension is available on cedartrail.

I don't think is it. I tried to find this before and could only find =
GL_IMG_texture_stream2 listed in the GL extensions (for which I can find =
no documentation!).

> The pdf used to be hosted on intel (emgd section) web site, but it
> looks like it was taken down. I can check if I still have it somewhere
> if you're interested.

Yes please :-)

Chris Tapp

opensource@keylevel.com
www.keylevel.com




