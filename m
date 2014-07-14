Return-Path: <wpdster@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56B24E006F3; Mon, 14 Jul 2014 08:32:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (wpdster[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
Received: from mail-vc0-f180.google.com (mail-vc0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E1DB5E0030A
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 08:32:11 -0700 (PDT)
Received: by mail-vc0-f180.google.com with SMTP id im17so7666456vcb.11
	for <yocto@yoctoproject.org>; Mon, 14 Jul 2014 08:32:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=BkhmmwIaUHY8+gXoxD/OqhipQ5mouoyce3PkmSZEBko=;
	b=W1biBglx8mOZdNuceaoqeU18156crKS1avZFTMo6MYOkTsWAR8Nht/E5CEc5u0XN/v
	5eseGwhc/tQWwZ2xP0RbKsbeCCh5Ps/+TOgQIjpsXONe9SFu5QUr87FucuPqI46BGh0v
	uh2de9jtNw6gUdmrRv1Ow2xCp9XA7TIfpIGDQz3GYxNzMxcWlDGbzcBbKMf3wBlXeiC7
	m/7ou5OHlIMf1E3xcj3A4xlgdoPYtw3fk6Demg7k550n/8wy8xA9nsn8T5QY01tCzQp6
	jygRnRsLQe7cmZcQB0e7G3hdQCwlATOHr4G6H0YKGb5aVrMeorJECwnwX/QaanZOoNYn
	RUGQ==
X-Received: by 10.52.77.97 with SMTP id r1mr2955954vdw.31.1405351930841; Mon,
	14 Jul 2014 08:32:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.105.233 with HTTP; Mon, 14 Jul 2014 08:31:40 -0700 (PDT)
In-Reply-To: <CAJTo0Lai=JgicnNi9U=UneTKGHsHrE=bR5BC7JDu3-6OnkoVLw@mail.gmail.com>
References: <CAF_dkJC4ZFULv93=PFhC-ZwO6Vp058OBZ1nDmLGyce4WFS=9rA@mail.gmail.com>
	<CAJTo0Lai=JgicnNi9U=UneTKGHsHrE=bR5BC7JDu3-6OnkoVLw@mail.gmail.com>
From: Patrick Doyle <wpdster@gmail.com>
Date: Mon, 14 Jul 2014 11:31:40 -0400
Message-ID: <CAF_dkJD6GAqN3+Q1weyYO+9QGn-QP2m271AwXtQEN7z_=-RQHg@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Make autotools use autogen.sh
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
X-List-Received-Date: Mon, 14 Jul 2014 15:32:14 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi Ross,
Thank you for answering.  As we've been digging into it here, we've found:
a) do_compile fails because make depends on INSTALL, because INSTALL
is listed in the aravis_DATA list in Makefile.am.
b) It appears (subject to further investigation) that autoreconf
--install doesn't create the INSTALL file because it is passed the
--foreign flag (whereas autogen.sh passes the --gnu flag to automake).

I'm going to continue poking around and see if there is some sort of
OE_USE_GNU_INSTEAD_OF_FOREIGN flag I can set in my recipe :-)  In the
mean time, I have established that I can override do_configure (for
this specific case) with:

do_configure() {
    NOCONFIGURE=3Dtrue ./autogen.sh --enable-gst-plugin
    oe_runconf
}

The NOCONFIGURE=3Dtrue is required because that's what upstream
autogen.sh checks to see whether it should run configure or not.

If I wanted to learn more about autogen.sh dying out, where would I
look?  I'd be happy to talk with the upstream maintainer about whether
he could eliminate this or not, but I'd like to know more myself
before starting that conversation.  However, I think there might still
be the issue with --foreign vs --gnu (assuming that is truly the root
cause of the missing INSTALL file).

--wpd



On Mon, Jul 14, 2014 at 10:25 AM, Burton, Ross <ross.burton@intel.com> wrot=
e:
> On 14 July 2014 14:32, Patrick Doyle <wpdster@gmail.com> wrote:
>> What is the best thing to do here=E2=80=A6
>> Should I inherit autotools and override do_configure with my own
>> version that just runs the (package supplied) autogen.sh?
>>
>> Is there a way for autotools to run automake --add-missing?
>
> So autotools.bbclass invokes autoreconf --install, which should be
> passed down as automake --add-missing.  If that isn't the case then
> that's arguably a bug in autoreconf.
>
> In general autogen.sh is dying now that autoconf has autoreconf, as
> your typical autogen.sh just runs the autoconf/automake/etc tools in
> the right order - and this is what autoreconf does.
>
>> Should I go figure out why the build fails in INSTALL doesn't exist?
>> (I'm going to start there, since my first two ideas haven't panned
>> out.  (Well, I haven't actually tried the first one yet, it just seems
>> silly to me to inherit autotools and then not use them.))
>
> I've no idea why a missing INSTALL file would cause a build error, or
> why you don't get it when autoreconf is executed.  Can you share some
> logs?
>
> Ross

