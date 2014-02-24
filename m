Return-Path: <marc.ferland@gmail.com>
Received: from mail-qa0-f45.google.com (mail-qa0-f45.google.com
	[209.85.216.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF4E8E008F5;
	Mon, 24 Feb 2014 11:20:04 -0800 (PST)
Received: by mail-qa0-f45.google.com with SMTP id m5so6735967qaj.18
	for <multiple recipients>; Mon, 24 Feb 2014 11:20:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:date:from:to:cc:subject:message-id:reply-to:references
	:mime-version:content-type:content-disposition:in-reply-to
	:user-agent; bh=uFZrpSMfInyjPjeH4pqLos3VzwcJ9s06M+VZhBt87iA=;
	b=C/wl4xZBfeqkvLLvJqG3lQvegcH3gRuPgYYec380L25HCzUlju8ImQ/L3ntGLWCz3E
	lFszQlRj+2ChJDG0VRo3F1NUZyCJgqvuw/NYe4Wigfm4CxaPn/bxTZ9xGOMZKqyKMfsa
	lzQKyggA9YGx8SQA1vqOCZXIAjipzJGQmAoL6iEUOCK6ytwgEA6JgtMc2kyBQhMYI8HA
	5yPO7i9IyrAqtFscRwEYHumxvCh/y2h2Apywo8Qg5KnN058wSukLUMOMn92Bd/PjBO5s
	W+1JXEfmvWQHl4vgvhBo5mDo6KD0EPyN7Hu4gbPYHmbTfIwCHWHHYkKabtUEBbMTr1aD
	oXoQ==
X-Received: by 10.224.137.202 with SMTP id x10mr32520519qat.80.1393269603388; 
	Mon, 24 Feb 2014 11:20:03 -0800 (PST)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPSA id g36sm13088971qge.7.2014.02.24.11.20.01
	for <multiple recipients>
	(version=TLSv1 cipher=RC4-SHA bits=128/128);
	Mon, 24 Feb 2014 11:20:02 -0800 (PST)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Mon, 24 Feb 2014 14:21:38 -0500
Date: Mon, 24 Feb 2014 14:21:38 -0500
From: Marc Ferland <ferlandm@sonatest.com>
To: Chris Tapp <opensource@keylevel.com>
Message-ID: <20140224192138.GJ15075@marc-desktop>
References: <2081A7FF-759C-444A-A5D8-479DC718591D@keylevel.com>
MIME-Version: 1.0
In-Reply-To: <2081A7FF-759C-444A-A5D8-479DC718591D@keylevel.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: meta-intel@yoctoproject.org, Yocto Project <yocto@yoctoproject.org>
Subject: Re: Cedartrail zero-copy texture updates
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ferlandm@sonatest.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 24 Feb 2014 19:20:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Mon, Feb 24, 2014 at 03:46:07PM +0000, Chris Tapp wrote:
> I'm trying to get zero-copy GLES textures working using Danny /
> Cedartrail (PVR) so I can stream video frames into a GLES
> application.
> 
> Googling hasn't really helped that much with how to do this, but I
> think I need to use eglCreateImageKHR and a client-side buffer so
> that glEGLImageTargetTexture2DOES() can be used to bind the texture
> to an image in memory.
> 
> eglCreatePixmapSurfaceHI() looks like it allows client memory to be
> used as a colour-buffer which can be passed to eglCreateImageKHR,
> but I can't seem to be able to create a context which supports
> pixmaps.
> 
> Are there any examples out there to show how to put all of this
> together?
> 
Documentation about this stuff is indeed sparse and hard to find!

I once tried (and failed!) to do something similar on crownbay but the
texture data was mapped to a polygon mesh (no video acceleration
stuff).

The documentation that I came across mentionned using the
GL_TEXTURE_STREAM_IMG extension to implement the zero-copy texture
transfers. Maybe the same extension is available on cedartrail.

The pdf used to be hosted on intel (emgd section) web site, but it
looks like it was taken down. I can check if I still have it somewhere
if you're interested.

Marc

