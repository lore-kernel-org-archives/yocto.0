Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9EE7CE0045D
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 03:37:02 -0700 (PDT)
Received: from mail-oa0-f48.google.com ([209.85.219.48])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 18 Oct 2012 03:37:00 -0700
Received: by mail-oa0-f48.google.com with SMTP id h2so10372815oag.35
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2012 03:36:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=X1O/xYhDlk/vv/NhMu35HulXbuPtdbL9USe1+cStNT4=;
	b=BZIPEgxmqt+ibs3VVux3Aj10OYePg1rne+asoqUqHvalICizcZDYAzFijWpXplzaX9
	9mrJzLftrj3Ns9/7nB654ZdqHi56cU+F3V5xrPexORla6TNzU3Kh4ZPMY6XXSegJiPMq
	CuuhGq2WMjMbZl816kZPNER9RJtQ3/+zmCApE2naNNZd8ruUgTIIqii/bDPxwk0rOqp5
	663+EkWxY8nyEG+KJJHmLIQt8wPutG086Tdn8EBpeQwcAH9TeiKlaWiUZL9sd363g6o/
	4AzhI3XTu45jVif8gxOT3JjYnUXa8Bv/czGSToIkKJPVS0tDOtz66IWXM0hhlMOReWpm
	TPFg==
Received: by 10.60.172.134 with SMTP id bc6mr6980128oec.1.1350556618468; Thu,
	18 Oct 2012 03:36:58 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.46.70 with HTTP; Thu, 18 Oct 2012 03:36:38 -0700 (PDT)
In-Reply-To: <CAJTo0LbS8uewRzmai8WidO982YMw7-B0QH8aYKQeX-WCqyyctQ@mail.gmail.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237946A85CDB@ORSMSX101.amr.corp.intel.com>
	<CA+gsK-ovhd30EZ3R68R=o4=iWb5MJqZAAenwRo2yJg+_Tn1NTQ@mail.gmail.com>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237946A86E2E@ORSMSX101.amr.corp.intel.com>
	<1444424.PbzRs5XmCV@helios>
	<CAJTo0LbS8uewRzmai8WidO982YMw7-B0QH8aYKQeX-WCqyyctQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 18 Oct 2012 11:36:38 +0100
Message-ID: <CAJTo0Lbt1RDT=UkMij0cVt73Wf9r1giGifcb8Ud_QOwbG=DwtQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Gm-Message-State: ALoCoQkp1d0Gtq7HB1t6/J+z8LFeU+QKZWHnEPBjxwdM4JTAQ1RCBNyJKUh8FshGj3pCHH0M0MXP
Cc: yocto@yoctoproject.org
Subject: Re: Requesting information on some variables
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
X-List-Received-Date: Thu, 18 Oct 2012 10:37:02 -0000
Content-Type: text/plain; charset=UTF-8

On 18 October 2012 10:33, Burton, Ross <ross.burton@intel.com> wrote:
> A concrete example might help.  For example there is a "bluetooth"
> machine feature that means bluez (the bluetooth daemon) is built and
> added to the image, ConnMan enabled bluetooth support, and so on.

I say machine feature, I mean distro feature.

Ross

