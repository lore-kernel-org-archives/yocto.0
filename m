Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0CF72E01798
	for <yocto@yoctoproject.org>; Fri,  8 Nov 2013 10:40:24 -0800 (PST)
Received: by mail-ie0-f178.google.com with SMTP id to1so2110142ieb.37
	for <yocto@yoctoproject.org>; Fri, 08 Nov 2013 10:40:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=z5RY3moTLnyKJTeGHbiSLzu9y34vCFrL5CkRiyOT57Q=;
	b=Llx0DUuxT+fkljKGUPaNNffzacM5mAouVnKoey54kqD0pDZFve8iEQpMUR3JfidLKY
	3IKcdCYTSYNmY2dKGL41orb7MbcFkmD4yA+UE/7XYpbfGRwQij23aV+fJm9eGdmK2OxR
	R5LfNlvt+Jfi47AlNTM6O0AimZbkDU+MeWEB7u1Me+JFKjw74nWiBMUgkXQ09Ghr3nIf
	+JxMQVYUTMBasWYpjX5o76XqM4CKoHxIGNRtKBXty+IQ2bfCPrvbLrIaXSg83iHvUvah
	mOSc5pAXZwjsrl29P5t36vYBTt/b5Rt3JW66PFdtaJMUW2/u8Cdegb/ZnAwU5THexskN
	5wFA==
X-Received: by 10.50.57.44 with SMTP id f12mr3387405igq.39.1383936023522; Fri,
	08 Nov 2013 10:40:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.79.167 with HTTP; Fri, 8 Nov 2013 10:39:53 -0800 (PST)
In-Reply-To: <527CA22F.8060102@zafena.se>
References: <CAJ7Vayh_TRCh8fCzafG9vbkD8Wu9rF_a0A-L=bV39tA2hv_8-w@mail.gmail.com>
	<CAJ7VayhvsG8r0odzYiwYTXQ12J+kfewJz5K5GMs8kkM-+hvFfQ@mail.gmail.com>
	<52768EEE.8080804@redhat.com>
	<CAJ7VayhALDx9g6ZoX-ZezoVdaCz675rXGi6DTu2eijRmyxwgSA@mail.gmail.com>
	<527CA22F.8060102@zafena.se>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 8 Nov 2013 10:39:53 -0800
Message-ID: <CAMKF1sr4z3YtBRYmgrFY_fVK4do=33igCvv_BYb1zDZh1HAvhQ@mail.gmail.com>
To: =?UTF-8?Q?Xerxes_R=C3=A5nby?= <xerxes@zafena.se>
Cc: Andrew Haley <aph@redhat.com>, sonia verma <soniaverma9727@gmail.com>,
	zero-dev@openjdk.java.net,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: enable Shark support in JAVA + list of alternative JVM for use in combination with OpenJDK on PowerPC
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
X-List-Received-Date: Fri, 08 Nov 2013 18:40:25 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Fri, Nov 8, 2013 at 12:34 AM, Xerxes R=C3=A5nby <xerxes@zafena.se> wrote=
:
> There is a PowerPC Hotspot JVM available for use with OpenJDK maintained =
by the ppc-aix-port (it also work on linux!), it includes a mixed-mode VM (=
with the C++ Interpreter and the C2 "Server" JIT compiler).
> http://openjdk.java.net/projects/ppc-aix-port/
> https://wiki.openjdk.java.net/pages/viewpage.action?pageId=3D13041681
> I recommend you to update meta-java to build this port for use on PowerPC=
.
> This is the most actively maintained OpenJDK PowerPC port.

has anyone tested it on FreeScale PPC platforms. I am sure it will
work fine on IBM ppc platforms.

