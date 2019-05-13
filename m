Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F4055E00D4E; Mon, 13 May 2019 00:27:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
	[209.85.160.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0302BE00B8F
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 00:27:54 -0700 (PDT)
Received: by mail-qt1-f177.google.com with SMTP id y42so13566754qtk.6
	for <yocto@yoctoproject.org>; Mon, 13 May 2019 00:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=e8EIPZmKLHj1qDcjPCVeS8IIEgWTjHVksp4eq7JySD8=;
	b=WqavwMa9JsrymR/PdZTv9DtIjbcGecNSKovKw0/xxvFrjm5WYJ5a+OSH9PdO8v6zWx
	Oyk9TwEFeadns4yrBBLyaepqPyCmRzS4pIhjX4apEZsLX9xnSNGvU7Qvd/ySg7Pcg/J1
	/znjAYGN52bjgACe+K8wlZU7dl1L5t84w8S2xnQZUkFPpn9WReXIAW9Xo+XT8GYbTsSB
	QK7WkrXW7IGWix0soAaF1SlVGLAjUIRf4kAjUjGLMVGcwpCaTyYhYVpHZsqvFseUOIQ4
	f5KHc2YjdANbX2A+QlclrXZ51kYtja5meQMgKFsLu8xlxrUr5mZq4QJVOIRtdjh9zESW
	scjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=e8EIPZmKLHj1qDcjPCVeS8IIEgWTjHVksp4eq7JySD8=;
	b=joa5Oj74UQPdlE/JLYh0XnQWtWzYk6Fnvllvo/mplGG0OFUwGgS/MruQdFA1ouS/yg
	qEiVWgN1gukZVtsFR5+oLC3z+yxfWmg0aOL0KGALUeSvsIAcmx+77F+pePHWV/BJOvcG
	vlnMYdFKbDDFLlRz7D5XVEFd8mPEmyTP9M4JbRIoQLqU/44Dzcbg77J6DDwHXD0FiUl+
	gku4DnYDKikevIcfRW/y6DO0XjGYh1rW1rNTGXWVS+bE4398bQhdWjXULu6A3ZkvZJEo
	V4YXZf7v9BqR+klN7w1XhJPl2STy4YXej3daN08dEPMUDsp95nt/hVG3Pa1bBWhJrwfh
	DlqQ==
X-Gm-Message-State: APjAAAXWzAzNtXarGBWVbw7FpuzMfCfyl83Y5oQBU2dc63KaQb3xQ7hs
	9sEb7uUIU0ovzk/r0RafBun5rZpchugUG1wIT2s=
X-Google-Smtp-Source: APXvYqyChjjIc78nPMhliZrgjnC97VSTMV5AgrMyb+W3Y7el83RHEiqhTBgMbCSQ/PegekdckksvrTRzu175eV+VmJE=
X-Received: by 2002:a0c:8a6c:: with SMTP id 41mr19582793qvu.236.1557732474252; 
	Mon, 13 May 2019 00:27:54 -0700 (PDT)
MIME-Version: 1.0
References: <e86cf937-5734-fc36-cd94-fad9b0155059@gmail.com>
	<65432636-c595-ed39-28f3-efb7a0d565da@gmail.com>
In-Reply-To: <65432636-c595-ed39-28f3-efb7a0d565da@gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Mon, 13 May 2019 09:27:43 +0200
Message-ID: <CAGAf8LwxT3dKLdwzLzpa8p4DzEP5COA9iro6F_11AYtkpVrwzg@mail.gmail.com>
To: akuster808 <akuster808@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	OpenEmbedded Devel List <openembedded-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<openembedded-core@lists.openembedded.org>
Subject: Re: patchwork
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
X-List-Received-Date: Mon, 13 May 2019 07:27:59 -0000
Content-Type: text/plain; charset="UTF-8"

Off Topic @: The same chaos as with German Govt. (KVR and Finanzamt).

Zoran
_______

On Sun, May 12, 2019 at 8:05 PM akuster808 <akuster808@gmail.com> wrote:
>
> ok, so no Admins. This is unexceptionable.
>
> OE TSC and Board, I believe its your time to get involved.
>
> regards,
> Armin
>
> On 5/3/19 10:18 AM, akuster808 wrote:
> > Hello OE folk,
> >
> > My apologies for cross posting.
> >
> > Who is the Admin for Patchwork?
> >
> > I would like additional privileges to manage the "Yocto Project Layers"
> > queue.
> >
> > Also, I would like additional  privileges to add new branches for any
> > oe, meta-oe queues & yp layers.
> >
> > kind regards,
> > Armin
> >
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

