Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0DF6BE00D07; Thu,  4 Apr 2019 17:59:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ticotimo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.44 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f44.google.com (mail-vs1-f44.google.com
	[209.85.217.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7653FE00BB7
	for <yocto@yoctoproject.org>; Thu,  4 Apr 2019 17:59:08 -0700 (PDT)
Received: by mail-vs1-f44.google.com with SMTP id n14so2497453vsp.12
	for <yocto@yoctoproject.org>; Thu, 04 Apr 2019 17:59:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=nZdcSCRgy7k1cpUWs+SPoCTmwhuTFcwqpGWZkXCCOtE=;
	b=ClcEblbyBnE/T5SVts5cHkgr9DRbhf7oKRaUZ5d8gHoQdP8/eSj6L4Q0bRa2QJPPzO
	2FvXQH6XkMINEHIPuJTfjOXYx23dF9wp9XBrJGUFWuC3R2k6hn48IG/7I9o1ej+/A3Lb
	lC1tdtyTTeQOZ6msqC0hC5HCu/5+QffR2QK0B2/2Mwycxxa09GPS1OVMhSg2sHvUnjLX
	cdZBWa7KpNuXU8czLYdBIrAy1XJlQFRiJMPGq/g7WmrDyGToO3c0sbl/DKxQG0bEwqRJ
	efCs16ojPB2ZkTGCZwcAd2fJ9h0K4pTW28KC6LabxFlJ4tpeAA1qeedR2OzRonVBJcQS
	JODw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=nZdcSCRgy7k1cpUWs+SPoCTmwhuTFcwqpGWZkXCCOtE=;
	b=cya9uaYUhuJGOGa5tfyYYmYoEI531zKlzzwhMGicN9YgJyEXq0/gWMBUrmvHiwKBDL
	+kVzotHqVC1kOAXCAxOS+8F2+ynV8Qaf+LUz26vX/cexDsx7Xbem4KgIBK7yoEKznhA+
	dekFZPxggzKhoa/KzmDLtFYbGiDBWWCimhRNHQ9Re5bbJ1f6RvmENnAo1V9GTUcEhsTN
	InVACYC1y0PhKcfAtCUCBhoQ3bxqwZsMvOYtzvHku8JZqUCvJlRVYvkSh828jaFQ8YZh
	pjiayUiwD7Bsro12Ik7kCA7mDyHRU9pkIkMDoqCZy9zB1PvQSoviqDQIKya7LfcmQ3y6
	6d4A==
X-Gm-Message-State: APjAAAVUiytdRgBxlBkdwEotxxQXky2wXdBpfp0J7tcBjgoqmkOPA+6C
	lJ+b9zjW443Bs1PmhDhtJHHcmEXIeZqn0FZfTlk=
X-Google-Smtp-Source: APXvYqw1OVMPWMKrrcvs2kdNX7EUM3JEugIxkdnAioQOPVETn+MQ6MYk6P2bod9clxaN7HIpZMPdl5FvqZIJ+jKkQ+k=
X-Received: by 2002:a67:8e0a:: with SMTP id q10mr6627958vsd.56.1554425947396; 
	Thu, 04 Apr 2019 17:59:07 -0700 (PDT)
MIME-Version: 1.0
References: <20190328033000.C90DF1C2149@ubuntu1604-ty-1.yocto.io>
	<015AB11D45F2C442929CB2765DAE738634DB02DA@PGSMSX110.gar.corp.intel.com>
	<8322586b16a5bda01770480f7096837c13d26f6b.camel@linuxfoundation.org>
	<015AB11D45F2C442929CB2765DAE738634DC0126@PGSMSX110.gar.corp.intel.com>
	<dd9d4804a3b42d84b0dcac0d35e3d1a1a4f0146a.camel@linuxfoundation.org>
	<5f279a38-ec01-21b5-e683-a9bc3caa8235@gmail.com>
	<913d9791bc9c41137478e4d76ee6131f385ab4cc.camel@linuxfoundation.org>
In-Reply-To: <913d9791bc9c41137478e4d76ee6131f385ab4cc.camel@linuxfoundation.org>
From: Tim Orling <ticotimo@gmail.com>
Date: Thu, 4 Apr 2019 17:58:56 -0700
Message-ID: <CANx9H-CcTgJg5_H10E0w_waoF-6PKdqJQ2x2ET+apqeA5yQouw@mail.gmail.com>
To: richard.purdie@linuxfoundation.org
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	Poky Build User <pokybuild@ubuntu1604-ty-1.yocto.io>,
	akuster808 <akuster808@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.6.2.rc3)
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
X-List-Received-Date: Fri, 05 Apr 2019 00:59:10 -0000
Content-Type: multipart/alternative; boundary="0000000000006c9ec10585bdfed5"

--0000000000006c9ec10585bdfed5
Content-Type: text/plain; charset="UTF-8"

Just curious: all Perl modules in oe-core have ptest enabled, but only
libxml-parser-perl is included in these test reports. Is it simply the only
module in that image or is something else afoot?

On Thu, Apr 4, 2019 at 3:29 PM <richard.purdie@linuxfoundation.org> wrote:

> On Fri, 2019-04-05 at 03:46 +0530, akuster808 wrote:
> >
> > On 4/5/19 3:25 AM, richard.purdie@linuxfoundation.org wrote:
> > > On Thu, 2019-04-04 at 02:19 +0000, Jain, Sangeeta wrote:
> > > > Also, I don't see any ptest results for 2.6.2.rc3 on public
> > > > autobuilder. Do you have any plans to run them and share the
> > > > results
> > > > on autobuilder?
> > > These were run separately but will run as part of any new stable
> > > release builds. The results are here:
> > >
> > >
> https://autobuilder.yocto.io/pub/non-release/20190328-8/testresults/qemux86-64-ptest/
> > >
> https://autobuilder.yocto.io/pub/non-release/20190328-7/testresults/qemux86-64-ptest/
> > >
> > > (for 2.6.2 and 2.5.4)
> > >
> > > I'll merge these into the main release output in due course.
> > Did I miss something in order to create:
> >
> https://autobuilder.yocto.io/pub/non-release/20190326-8/testresults/testresult-report.txt
>
> Right now only a-quick or a-full builds get those.
>
> You can get one with:
>
> $ wget
> https://autobuilder.yocto.io/pub/non-release/20190328-8/testresults/qemux86-64-ptest/testresults.json
> $ resulttool report .
>
> which gives:
>
>
> ==============================================================================================================
> PTest Result Summary
>
> ==============================================================================================================
>
> --------------------------------------------------------------------------------------------------------------
> Recipe             | Passed      | Failed   | Skipped  | Time(s)
>
> --------------------------------------------------------------------------------------------------------------
> acl                | 221         | 0        | 0        | -
> attr               | 109         | 0        | 0        | -
> bash               | 75          | 4        | 0        | -
> bluez5             | 25          | 0        | 0        | -
> busybox            | 528         | 15       | 45       | -
> bzip2              | 6           | 0        | 0        | -
> dbus-test          | 18          | 3        | 2        | -
> diffstat           | 439         | 0        | 0        | -
> diffutils          | 20          | 0        | 0        | -
> e2fsprogs          | 315         | 6        | 27       | -
> flex               | 114         | 0        | 0        | -
> gawk               | 342         | 0        | 0        | -
> gdbm               | 24          | 0        | 0        | -
> gdk-pixbuf         | 20          | 0        | 0        | -
> glib-2.0           | 259         | 3        | 0        | -
> gstreamer1.0       | 101         | 3        | 0        | -
> gzip               | 21          | 0        | 0        | -
> libpcre            | 3           | 0        | 0        | -
> libusb1            | 4           | 0        | 0        | -
> libxml-parser-perl | 15          | 0        | 0        | -
> libxml2            | 134         | 0        | 0        | -
> lttng-tools        | 1087        | 0        | 0        | - T
> lzo                | 39          | 6        | 0        | -
> nettle             | 158         | 0        | 2        | -
> openssh            | 832         | 72       | 367      | - T
> openssl            | 0           | 0        | 0        | -
> pango              | 12          | 0        | 0        | -
> perl               | 2298        | 1        | 120      | -
> python             | 5444        | 15       | 53       | -
> python3            | 7466        | 0        | 198      | -
> quilt              | 57          | 0        | 0        | -
> sed                | 86          | 0        | 0        | -
> slang              | 97          | 0        | 0        | -
> strace             | 213         | 272      | 97       | - T
> tcl                | 148         | 0        | 0        | -
> util-linux         | 0           | 395      | 55       | -
>
> --------------------------------------------------------------------------------------------------------------
>
> and
>
> $ wget
> https://autobuilder.yocto.io/pub/non-release/20190328-7/testresults/qemux86-64-ptest/testresults.json
> $ resulttool report .
>
> which gives:
>
>
> ==============================================================================================================
> PTest Result Summary
>
> ==============================================================================================================
>
> --------------------------------------------------------------------------------------------------------------
> Recipe             | Passed      | Failed   | Skipped  | Time(s)
>
> --------------------------------------------------------------------------------------------------------------
> acl                | 221         | 0        | 0        | -
> attr               | 109         | 0        | 0        | -
> bash               | 75          | 4        | 0        | -
> bluez5             | 7           | 0        | 0        | -
> busybox            | 509         | 14       | 36       | -
> bzip2              | 6           | 0        | 0        | -
> dbus-test          | 18          | 3        | 2        | -
> diffstat           | 439         | 0        | 0        | -
> diffutils          | 20          | 0        | 0        | -
> e2fsprogs          | 304         | 5        | 27       | -
> flex               | 114         | 0        | 0        | -
> gawk               | 342         | 0        | 0        | -
> gdbm               | 19          | 0        | 0        | -
> gdk-pixbuf         | 20          | 0        | 0        | -
> glib-2             | 252         | 1        | 0        | -
> gzip               | 21          | 0        | 0        | -
> libevent           | 1           | 0        | 0        | -
> libpcre            | 3           | 0        | 0        | -
> libxml-parser-perl | 15          | 0        | 0        | -
> libxml2            | 134         | 0        | 0        | -
> lttng-tools        | 1087        | 0        | 0        | -
> lzo                | 39          | 6        | 0        | -
> nettle             | 158         | 0        | 2        | -
> openssh            | 840         | 72       | 367      | -
> openssl            | 54          | 0        | 0        | -
> pango              | 12          | 0        | 0        | -
> perl               | 2282        | 3        | 120      | -
> python             | 8331        | 45       | 69       | -
> quilt              | 57          | 0        | 0        | -
> sed                | 86          | 0        | 0        | -
> slang              | 97          | 0        | 0        | -
> strace             | 160         | 233      | 80       | -
> tcl                | 148         | 0        | 0        | -
> util-linux         | 0           | 389      | 52       | -
>
> --------------------------------------------------------------------------------------------------------------
>
> Knowing what I do about master, there is the same image  space issue
> here triggered in the strace ptest by the looks of it which then breaks
> other tests like util-linux.
>
> Cheers,
>
> Richard
>
>
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000006c9ec10585bdfed5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: base64

PGRpdj48ZGl2IGRpcj0iYXV0byI+SnVzdCBjdXJpb3VzOiBhbGwgUGVybCBtb2R1bGVzIGluIG9l
LWNvcmUgaGF2ZSBwdGVzdCBlbmFibGVkLCBidXQgb25seSBsaWJ4bWwtcGFyc2VyLXBlcmwgaXMg
aW5jbHVkZWQgaW4gdGhlc2UgdGVzdCByZXBvcnRzLiBJcyBpdCBzaW1wbHkgdGhlIG9ubHkgbW9k
dWxlIGluIHRoYXQgaW1hZ2Ugb3IgaXMgc29tZXRoaW5nIGVsc2UgYWZvb3Q/PC9kaXY+PC9kaXY+
PGRpdj48YnI+PGRpdiBjbGFzcz0iZ21haWxfcXVvdGUiPjxkaXYgZGlyPSJsdHIiIGNsYXNzPSJn
bWFpbF9hdHRyIj5PbiBUaHUsIEFwciA0LCAyMDE5IGF0IDM6MjkgUE0gJmx0OzxhIGhyZWY9Im1h
aWx0bzpyaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24ub3JnIj5yaWNoYXJkLnB1cmRpZUBs
aW51eGZvdW5kYXRpb24ub3JnPC9hPiZndDsgd3JvdGU6PGJyPjwvZGl2PjxibG9ja3F1b3RlIGNs
YXNzPSJnbWFpbF9xdW90ZSIgc3R5bGU9Im1hcmdpbjowIDAgMCAuOGV4O2JvcmRlci1sZWZ0OjFw
eCAjY2NjIHNvbGlkO3BhZGRpbmctbGVmdDoxZXgiPk9uIEZyaSwgMjAxOS0wNC0wNSBhdCAwMzo0
NiArMDUzMCwgYWt1c3RlcjgwOCB3cm90ZTo8YnI+DQomZ3Q7IDxicj4NCiZndDsgT24gNC81LzE5
IDM6MjUgQU0sIDxhIGhyZWY9Im1haWx0bzpyaWNoYXJkLnB1cmRpZUBsaW51eGZvdW5kYXRpb24u
b3JnIiB0YXJnZXQ9Il9ibGFuayI+cmljaGFyZC5wdXJkaWVAbGludXhmb3VuZGF0aW9uLm9yZzwv
YT4gd3JvdGU6PGJyPg0KJmd0OyAmZ3Q7IE9uIFRodSwgMjAxOS0wNC0wNCBhdCAwMjoxOSArMDAw
MCwgSmFpbiwgU2FuZ2VldGEgd3JvdGU6PGJyPg0KJmd0OyAmZ3Q7ICZndDsgQWxzbywgSSBkb24m
IzM5O3Qgc2VlIGFueSBwdGVzdCByZXN1bHRzIGZvciAyLjYuMi5yYzMgb24gcHVibGljPGJyPg0K
Jmd0OyAmZ3Q7ICZndDsgYXV0b2J1aWxkZXIuIERvIHlvdSBoYXZlIGFueSBwbGFucyB0byBydW4g
dGhlbSBhbmQgc2hhcmUgdGhlPGJyPg0KJmd0OyAmZ3Q7ICZndDsgcmVzdWx0czxicj4NCiZndDsg
Jmd0OyAmZ3Q7IG9uIGF1dG9idWlsZGVyPzxicj4NCiZndDsgJmd0OyBUaGVzZSB3ZXJlIHJ1biBz
ZXBhcmF0ZWx5IGJ1dCB3aWxsIHJ1biBhcyBwYXJ0IG9mIGFueSBuZXcgc3RhYmxlPGJyPg0KJmd0
OyAmZ3Q7IHJlbGVhc2UgYnVpbGRzLiBUaGUgcmVzdWx0cyBhcmUgaGVyZTo8YnI+DQomZ3Q7ICZn
dDsgPGJyPg0KJmd0OyAmZ3Q7IDxhIGhyZWY9Imh0dHBzOi8vYXV0b2J1aWxkZXIueW9jdG8uaW8v
cHViL25vbi1yZWxlYXNlLzIwMTkwMzI4LTgvdGVzdHJlc3VsdHMvcWVtdXg4Ni02NC1wdGVzdC8i
IHJlbD0ibm9yZWZlcnJlciIgdGFyZ2V0PSJfYmxhbmsiPmh0dHBzOi8vYXV0b2J1aWxkZXIueW9j
dG8uaW8vcHViL25vbi1yZWxlYXNlLzIwMTkwMzI4LTgvdGVzdHJlc3VsdHMvcWVtdXg4Ni02NC1w
dGVzdC88L2E+PGJyPg0KJmd0OyAmZ3Q7IDxhIGhyZWY9Imh0dHBzOi8vYXV0b2J1aWxkZXIueW9j
dG8uaW8vcHViL25vbi1yZWxlYXNlLzIwMTkwMzI4LTcvdGVzdHJlc3VsdHMvcWVtdXg4Ni02NC1w
dGVzdC8iIHJlbD0ibm9yZWZlcnJlciIgdGFyZ2V0PSJfYmxhbmsiPmh0dHBzOi8vYXV0b2J1aWxk
ZXIueW9jdG8uaW8vcHViL25vbi1yZWxlYXNlLzIwMTkwMzI4LTcvdGVzdHJlc3VsdHMvcWVtdXg4
Ni02NC1wdGVzdC88L2E+PGJyPg0KJmd0OyAmZ3Q7IDxicj4NCiZndDsgJmd0OyAoZm9yIDIuNi4y
IGFuZCAyLjUuNCk8YnI+DQomZ3Q7ICZndDsgPGJyPg0KJmd0OyAmZ3Q7IEkmIzM5O2xsIG1lcmdl
IHRoZXNlIGludG8gdGhlIG1haW4gcmVsZWFzZSBvdXRwdXQgaW4gZHVlIGNvdXJzZS48YnI+DQom
Z3Q7IERpZCBJIG1pc3Mgc29tZXRoaW5nIGluIG9yZGVyIHRvIGNyZWF0ZTo8YnI+DQomZ3Q7IDxh
IGhyZWY9Imh0dHBzOi8vYXV0b2J1aWxkZXIueW9jdG8uaW8vcHViL25vbi1yZWxlYXNlLzIwMTkw
MzI2LTgvdGVzdHJlc3VsdHMvdGVzdHJlc3VsdC1yZXBvcnQudHh0IiByZWw9Im5vcmVmZXJyZXIi
IHRhcmdldD0iX2JsYW5rIj5odHRwczovL2F1dG9idWlsZGVyLnlvY3RvLmlvL3B1Yi9ub24tcmVs
ZWFzZS8yMDE5MDMyNi04L3Rlc3RyZXN1bHRzL3Rlc3RyZXN1bHQtcmVwb3J0LnR4dDwvYT48YnI+
DQo8YnI+DQpSaWdodCBub3cgb25seSBhLXF1aWNrIG9yIGEtZnVsbCBidWlsZHMgZ2V0IHRob3Nl
Ljxicj4NCjxicj4NCllvdSBjYW4gZ2V0IG9uZSB3aXRoOjxicj4NCjxicj4NCiQgd2dldCA8YSBo
cmVmPSJodHRwczovL2F1dG9idWlsZGVyLnlvY3RvLmlvL3B1Yi9ub24tcmVsZWFzZS8yMDE5MDMy
OC04L3Rlc3RyZXN1bHRzL3FlbXV4ODYtNjQtcHRlc3QvdGVzdHJlc3VsdHMuanNvbiIgcmVsPSJu
b3JlZmVycmVyIiB0YXJnZXQ9Il9ibGFuayI+aHR0cHM6Ly9hdXRvYnVpbGRlci55b2N0by5pby9w
dWIvbm9uLXJlbGVhc2UvMjAxOTAzMjgtOC90ZXN0cmVzdWx0cy9xZW11eDg2LTY0LXB0ZXN0L3Rl
c3RyZXN1bHRzLmpzb248L2E+PGJyPg0KJCByZXN1bHR0b29sIHJlcG9ydCAuPGJyPg0KPGJyPg0K
d2hpY2ggZ2l2ZXM6PGJyPg0KPGJyPg0KPT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT08YnI+DQpQVGVzdCBSZXN1bHQgU3VtbWFyeTxicj4NCj09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PGJyPg0KLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08YnI+DQpS
ZWNpcGXCoCDCoCDCoCDCoCDCoCDCoCDCoHwgUGFzc2VkwqAgwqAgwqAgfCBGYWlsZWTCoCDCoHwg
U2tpcHBlZMKgIHwgVGltZShzKcKgIMKgPGJyPg0KLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS08YnI+DQphY2zCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oCB8IDIyMcKgIMKgIMKgIMKgIMKgfCAwwqAgwqAgwqAgwqAgfCAwwqAgwqAgwqAgwqAgfCAtPGJy
Pg0KYXR0csKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgfCAxMDnCoCDCoCDCoCDCoCDCoHwgMMKgIMKg
IMKgIMKgIHwgMMKgIMKgIMKgIMKgIHwgLTxicj4NCmJhc2jCoCDCoCDCoCDCoCDCoCDCoCDCoCDC
oHwgNzXCoCDCoCDCoCDCoCDCoCB8IDTCoCDCoCDCoCDCoCB8IDDCoCDCoCDCoCDCoCB8IC08YnI+
DQpibHVlejXCoCDCoCDCoCDCoCDCoCDCoCDCoHwgMjXCoCDCoCDCoCDCoCDCoCB8IDDCoCDCoCDC
oCDCoCB8IDDCoCDCoCDCoCDCoCB8IC08YnI+DQpidXN5Ym94wqAgwqAgwqAgwqAgwqAgwqAgfCA1
MjjCoCDCoCDCoCDCoCDCoHwgMTXCoCDCoCDCoCDCoHwgNDXCoCDCoCDCoCDCoHwgLTxicj4NCmJ6
aXAywqAgwqAgwqAgwqAgwqAgwqAgwqAgfCA2wqAgwqAgwqAgwqAgwqAgwqB8IDDCoCDCoCDCoCDC
oCB8IDDCoCDCoCDCoCDCoCB8IC08YnI+DQpkYnVzLXRlc3TCoCDCoCDCoCDCoCDCoCB8IDE4wqAg
wqAgwqAgwqAgwqAgfCAzwqAgwqAgwqAgwqAgfCAywqAgwqAgwqAgwqAgfCAtPGJyPg0KZGlmZnN0
YXTCoCDCoCDCoCDCoCDCoCDCoHwgNDM5wqAgwqAgwqAgwqAgwqB8IDDCoCDCoCDCoCDCoCB8IDDC
oCDCoCDCoCDCoCB8IC08YnI+DQpkaWZmdXRpbHPCoCDCoCDCoCDCoCDCoCB8IDIwwqAgwqAgwqAg
wqAgwqAgfCAwwqAgwqAgwqAgwqAgfCAwwqAgwqAgwqAgwqAgfCAtPGJyPg0KZTJmc3Byb2dzwqAg
wqAgwqAgwqAgwqAgfCAzMTXCoCDCoCDCoCDCoCDCoHwgNsKgIMKgIMKgIMKgIHwgMjfCoCDCoCDC
oCDCoHwgLTxicj4NCmZsZXjCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHwgMTE0wqAgwqAgwqAgwqAg
wqB8IDDCoCDCoCDCoCDCoCB8IDDCoCDCoCDCoCDCoCB8IC08YnI+DQpnYXdrwqAgwqAgwqAgwqAg
wqAgwqAgwqAgwqB8IDM0MsKgIMKgIMKgIMKgIMKgfCAwwqAgwqAgwqAgwqAgfCAwwqAgwqAgwqAg
wqAgfCAtPGJyPg0KZ2RibcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgfCAyNMKgIMKgIMKgIMKgIMKg
IHwgMMKgIMKgIMKgIMKgIHwgMMKgIMKgIMKgIMKgIHwgLTxicj4NCmdkay1waXhidWbCoCDCoCDC
oCDCoCDCoHwgMjDCoCDCoCDCoCDCoCDCoCB8IDDCoCDCoCDCoCDCoCB8IDDCoCDCoCDCoCDCoCB8
IC08YnI+DQpnbGliLTIuMMKgIMKgIMKgIMKgIMKgIMKgfCAyNTnCoCDCoCDCoCDCoCDCoHwgM8Kg
IMKgIMKgIMKgIHwgMMKgIMKgIMKgIMKgIHwgLTxicj4NCmdzdHJlYW1lcjEuMMKgIMKgIMKgIMKg
fCAxMDHCoCDCoCDCoCDCoCDCoHwgM8KgIMKgIMKgIMKgIHwgMMKgIMKgIMKgIMKgIHwgLTxicj4N
Cmd6aXDCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHwgMjHCoCDCoCDCoCDCoCDCoCB8IDDCoCDCoCDC
oCDCoCB8IDDCoCDCoCDCoCDCoCB8IC08YnI+DQpsaWJwY3JlwqAgwqAgwqAgwqAgwqAgwqAgfCAz
wqAgwqAgwqAgwqAgwqAgwqB8IDDCoCDCoCDCoCDCoCB8IDDCoCDCoCDCoCDCoCB8IC08YnI+DQps
aWJ1c2IxwqAgwqAgwqAgwqAgwqAgwqAgfCA0wqAgwqAgwqAgwqAgwqAgwqB8IDDCoCDCoCDCoCDC
oCB8IDDCoCDCoCDCoCDCoCB8IC08YnI+DQpsaWJ4bWwtcGFyc2VyLXBlcmwgfCAxNcKgIMKgIMKg
IMKgIMKgIHwgMMKgIMKgIMKgIMKgIHwgMMKgIMKgIMKgIMKgIHwgLTxicj4NCmxpYnhtbDLCoCDC
oCDCoCDCoCDCoCDCoCB8IDEzNMKgIMKgIMKgIMKgIMKgfCAwwqAgwqAgwqAgwqAgfCAwwqAgwqAg
wqAgwqAgfCAtPGJyPg0KbHR0bmctdG9vbHPCoCDCoCDCoCDCoCB8IDEwODfCoCDCoCDCoCDCoCB8
IDDCoCDCoCDCoCDCoCB8IDDCoCDCoCDCoCDCoCB8IC0gVDxicj4NCmx6b8KgIMKgIMKgIMKgIMKg
IMKgIMKgIMKgIHwgMznCoCDCoCDCoCDCoCDCoCB8IDbCoCDCoCDCoCDCoCB8IDDCoCDCoCDCoCDC
oCB8IC08YnI+DQpuZXR0bGXCoCDCoCDCoCDCoCDCoCDCoCDCoHwgMTU4wqAgwqAgwqAgwqAgwqB8
IDDCoCDCoCDCoCDCoCB8IDLCoCDCoCDCoCDCoCB8IC08YnI+DQpvcGVuc3NowqAgwqAgwqAgwqAg
wqAgwqAgfCA4MzLCoCDCoCDCoCDCoCDCoHwgNzLCoCDCoCDCoCDCoHwgMzY3wqAgwqAgwqAgfCAt
IFQ8YnI+DQpvcGVuc3NswqAgwqAgwqAgwqAgwqAgwqAgfCAwwqAgwqAgwqAgwqAgwqAgwqB8IDDC
oCDCoCDCoCDCoCB8IDDCoCDCoCDCoCDCoCB8IC08YnI+DQpwYW5nb8KgIMKgIMKgIMKgIMKgIMKg
IMKgIHwgMTLCoCDCoCDCoCDCoCDCoCB8IDDCoCDCoCDCoCDCoCB8IDDCoCDCoCDCoCDCoCB8IC08
YnI+DQpwZXJswqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB8IDIyOTjCoCDCoCDCoCDCoCB8IDHCoCDC
oCDCoCDCoCB8IDEyMMKgIMKgIMKgIHwgLTxicj4NCnB5dGhvbsKgIMKgIMKgIMKgIMKgIMKgIMKg
fCA1NDQ0wqAgwqAgwqAgwqAgfCAxNcKgIMKgIMKgIMKgfCA1M8KgIMKgIMKgIMKgfCAtPGJyPg0K
cHl0aG9uM8KgIMKgIMKgIMKgIMKgIMKgIHwgNzQ2NsKgIMKgIMKgIMKgIHwgMMKgIMKgIMKgIMKg
IHwgMTk4wqAgwqAgwqAgfCAtPGJyPg0KcXVpbHTCoCDCoCDCoCDCoCDCoCDCoCDCoCB8IDU3wqAg
wqAgwqAgwqAgwqAgfCAwwqAgwqAgwqAgwqAgfCAwwqAgwqAgwqAgwqAgfCAtPGJyPg0Kc2VkwqAg
wqAgwqAgwqAgwqAgwqAgwqAgwqAgfCA4NsKgIMKgIMKgIMKgIMKgIHwgMMKgIMKgIMKgIMKgIHwg
MMKgIMKgIMKgIMKgIHwgLTxicj4NCnNsYW5nwqAgwqAgwqAgwqAgwqAgwqAgwqAgfCA5N8KgIMKg
IMKgIMKgIMKgIHwgMMKgIMKgIMKgIMKgIHwgMMKgIMKgIMKgIMKgIHwgLTxicj4NCnN0cmFjZcKg
IMKgIMKgIMKgIMKgIMKgIMKgfCAyMTPCoCDCoCDCoCDCoCDCoHwgMjcywqAgwqAgwqAgfCA5N8Kg
IMKgIMKgIMKgfCAtIFQ8YnI+DQp0Y2zCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB8IDE0OMKgIMKg
IMKgIMKgIMKgfCAwwqAgwqAgwqAgwqAgfCAwwqAgwqAgwqAgwqAgfCAtPGJyPg0KdXRpbC1saW51
eMKgIMKgIMKgIMKgIMKgfCAwwqAgwqAgwqAgwqAgwqAgwqB8IDM5NcKgIMKgIMKgIHwgNTXCoCDC
oCDCoCDCoHwgLTxicj4NCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tPGJyPg0KPGJyPg0KYW5kPGJyPg0KPGJyPg0KJCB3Z2V0IDxhIGhyZWY9Imh0
dHBzOi8vYXV0b2J1aWxkZXIueW9jdG8uaW8vcHViL25vbi1yZWxlYXNlLzIwMTkwMzI4LTcvdGVz
dHJlc3VsdHMvcWVtdXg4Ni02NC1wdGVzdC90ZXN0cmVzdWx0cy5qc29uIiByZWw9Im5vcmVmZXJy
ZXIiIHRhcmdldD0iX2JsYW5rIj5odHRwczovL2F1dG9idWlsZGVyLnlvY3RvLmlvL3B1Yi9ub24t
cmVsZWFzZS8yMDE5MDMyOC03L3Rlc3RyZXN1bHRzL3FlbXV4ODYtNjQtcHRlc3QvdGVzdHJlc3Vs
dHMuanNvbjwvYT48YnI+DQokIHJlc3VsdHRvb2wgcmVwb3J0IC48YnI+DQo8YnI+DQp3aGljaCBn
aXZlczo8YnI+DQo8YnI+DQo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PTxicj4NClBUZXN0IFJlc3VsdCBTdW1tYXJ5PGJyPg0KPT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT08YnI+DQotLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLTxicj4NClJlY2lwZcKg
IMKgIMKgIMKgIMKgIMKgIMKgfCBQYXNzZWTCoCDCoCDCoCB8IEZhaWxlZMKgIMKgfCBTa2lwcGVk
wqAgfCBUaW1lKHMpwqAgwqA8YnI+DQotLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLTxicj4NCmFjbMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgIHwgMjIx
wqAgwqAgwqAgwqAgwqB8IDDCoCDCoCDCoCDCoCB8IDDCoCDCoCDCoCDCoCB8IC08YnI+DQphdHRy
wqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB8IDEwOcKgIMKgIMKgIMKgIMKgfCAwwqAgwqAgwqAgwqAg
fCAwwqAgwqAgwqAgwqAgfCAtPGJyPg0KYmFzaMKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgfCA3NcKg
IMKgIMKgIMKgIMKgIHwgNMKgIMKgIMKgIMKgIHwgMMKgIMKgIMKgIMKgIHwgLTxicj4NCmJsdWV6
NcKgIMKgIMKgIMKgIMKgIMKgIMKgfCA3wqAgwqAgwqAgwqAgwqAgwqB8IDDCoCDCoCDCoCDCoCB8
IDDCoCDCoCDCoCDCoCB8IC08YnI+DQpidXN5Ym94wqAgwqAgwqAgwqAgwqAgwqAgfCA1MDnCoCDC
oCDCoCDCoCDCoHwgMTTCoCDCoCDCoCDCoHwgMzbCoCDCoCDCoCDCoHwgLTxicj4NCmJ6aXAywqAg
wqAgwqAgwqAgwqAgwqAgwqAgfCA2wqAgwqAgwqAgwqAgwqAgwqB8IDDCoCDCoCDCoCDCoCB8IDDC
oCDCoCDCoCDCoCB8IC08YnI+DQpkYnVzLXRlc3TCoCDCoCDCoCDCoCDCoCB8IDE4wqAgwqAgwqAg
wqAgwqAgfCAzwqAgwqAgwqAgwqAgfCAywqAgwqAgwqAgwqAgfCAtPGJyPg0KZGlmZnN0YXTCoCDC
oCDCoCDCoCDCoCDCoHwgNDM5wqAgwqAgwqAgwqAgwqB8IDDCoCDCoCDCoCDCoCB8IDDCoCDCoCDC
oCDCoCB8IC08YnI+DQpkaWZmdXRpbHPCoCDCoCDCoCDCoCDCoCB8IDIwwqAgwqAgwqAgwqAgwqAg
fCAwwqAgwqAgwqAgwqAgfCAwwqAgwqAgwqAgwqAgfCAtPGJyPg0KZTJmc3Byb2dzwqAgwqAgwqAg
wqAgwqAgfCAzMDTCoCDCoCDCoCDCoCDCoHwgNcKgIMKgIMKgIMKgIHwgMjfCoCDCoCDCoCDCoHwg
LTxicj4NCmZsZXjCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHwgMTE0wqAgwqAgwqAgwqAgwqB8IDDC
oCDCoCDCoCDCoCB8IDDCoCDCoCDCoCDCoCB8IC08YnI+DQpnYXdrwqAgwqAgwqAgwqAgwqAgwqAg
wqAgwqB8IDM0MsKgIMKgIMKgIMKgIMKgfCAwwqAgwqAgwqAgwqAgfCAwwqAgwqAgwqAgwqAgfCAt
PGJyPg0KZ2RibcKgIMKgIMKgIMKgIMKgIMKgIMKgIMKgfCAxOcKgIMKgIMKgIMKgIMKgIHwgMMKg
IMKgIMKgIMKgIHwgMMKgIMKgIMKgIMKgIHwgLTxicj4NCmdkay1waXhidWbCoCDCoCDCoCDCoCDC
oHwgMjDCoCDCoCDCoCDCoCDCoCB8IDDCoCDCoCDCoCDCoCB8IDDCoCDCoCDCoCDCoCB8IC08YnI+
DQpnbGliLTLCoCDCoCDCoCDCoCDCoCDCoCDCoHwgMjUywqAgwqAgwqAgwqAgwqB8IDHCoCDCoCDC
oCDCoCB8IDDCoCDCoCDCoCDCoCB8IC08YnI+DQpnemlwwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqB8
IDIxwqAgwqAgwqAgwqAgwqAgfCAwwqAgwqAgwqAgwqAgfCAwwqAgwqAgwqAgwqAgfCAtPGJyPg0K
bGliZXZlbnTCoCDCoCDCoCDCoCDCoCDCoHwgMcKgIMKgIMKgIMKgIMKgIMKgfCAwwqAgwqAgwqAg
wqAgfCAwwqAgwqAgwqAgwqAgfCAtPGJyPg0KbGlicGNyZcKgIMKgIMKgIMKgIMKgIMKgIHwgM8Kg
IMKgIMKgIMKgIMKgIMKgfCAwwqAgwqAgwqAgwqAgfCAwwqAgwqAgwqAgwqAgfCAtPGJyPg0KbGli
eG1sLXBhcnNlci1wZXJsIHwgMTXCoCDCoCDCoCDCoCDCoCB8IDDCoCDCoCDCoCDCoCB8IDDCoCDC
oCDCoCDCoCB8IC08YnI+DQpsaWJ4bWwywqAgwqAgwqAgwqAgwqAgwqAgfCAxMzTCoCDCoCDCoCDC
oCDCoHwgMMKgIMKgIMKgIMKgIHwgMMKgIMKgIMKgIMKgIHwgLTxicj4NCmx0dG5nLXRvb2xzwqAg
wqAgwqAgwqAgfCAxMDg3wqAgwqAgwqAgwqAgfCAwwqAgwqAgwqAgwqAgfCAwwqAgwqAgwqAgwqAg
fCAtPGJyPg0KbHpvwqAgwqAgwqAgwqAgwqAgwqAgwqAgwqAgfCAzOcKgIMKgIMKgIMKgIMKgIHwg
NsKgIMKgIMKgIMKgIHwgMMKgIMKgIMKgIMKgIHwgLTxicj4NCm5ldHRsZcKgIMKgIMKgIMKgIMKg
IMKgIMKgfCAxNTjCoCDCoCDCoCDCoCDCoHwgMMKgIMKgIMKgIMKgIHwgMsKgIMKgIMKgIMKgIHwg
LTxicj4NCm9wZW5zc2jCoCDCoCDCoCDCoCDCoCDCoCB8IDg0MMKgIMKgIMKgIMKgIMKgfCA3MsKg
IMKgIMKgIMKgfCAzNjfCoCDCoCDCoCB8IC08YnI+DQpvcGVuc3NswqAgwqAgwqAgwqAgwqAgwqAg
fCA1NMKgIMKgIMKgIMKgIMKgIHwgMMKgIMKgIMKgIMKgIHwgMMKgIMKgIMKgIMKgIHwgLTxicj4N
CnBhbmdvwqAgwqAgwqAgwqAgwqAgwqAgwqAgfCAxMsKgIMKgIMKgIMKgIMKgIHwgMMKgIMKgIMKg
IMKgIHwgMMKgIMKgIMKgIMKgIHwgLTxicj4NCnBlcmzCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoHwg
MjI4MsKgIMKgIMKgIMKgIHwgM8KgIMKgIMKgIMKgIHwgMTIwwqAgwqAgwqAgfCAtPGJyPg0KcHl0
aG9uwqAgwqAgwqAgwqAgwqAgwqAgwqB8IDgzMzHCoCDCoCDCoCDCoCB8IDQ1wqAgwqAgwqAgwqB8
IDY5wqAgwqAgwqAgwqB8IC08YnI+DQpxdWlsdMKgIMKgIMKgIMKgIMKgIMKgIMKgIHwgNTfCoCDC
oCDCoCDCoCDCoCB8IDDCoCDCoCDCoCDCoCB8IDDCoCDCoCDCoCDCoCB8IC08YnI+DQpzZWTCoCDC
oCDCoCDCoCDCoCDCoCDCoCDCoCB8IDg2wqAgwqAgwqAgwqAgwqAgfCAwwqAgwqAgwqAgwqAgfCAw
wqAgwqAgwqAgwqAgfCAtPGJyPg0Kc2xhbmfCoCDCoCDCoCDCoCDCoCDCoCDCoCB8IDk3wqAgwqAg
wqAgwqAgwqAgfCAwwqAgwqAgwqAgwqAgfCAwwqAgwqAgwqAgwqAgfCAtPGJyPg0Kc3RyYWNlwqAg
wqAgwqAgwqAgwqAgwqAgwqB8IDE2MMKgIMKgIMKgIMKgIMKgfCAyMzPCoCDCoCDCoCB8IDgwwqAg
wqAgwqAgwqB8IC08YnI+DQp0Y2zCoCDCoCDCoCDCoCDCoCDCoCDCoCDCoCB8IDE0OMKgIMKgIMKg
IMKgIMKgfCAwwqAgwqAgwqAgwqAgfCAwwqAgwqAgwqAgwqAgfCAtPGJyPg0KdXRpbC1saW51eMKg
IMKgIMKgIMKgIMKgfCAwwqAgwqAgwqAgwqAgwqAgwqB8IDM4OcKgIMKgIMKgIHwgNTLCoCDCoCDC
oCDCoHwgLTxicj4NCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tPGJyPg0KPGJyPg0KS25vd2luZyB3aGF0IEkgZG8gYWJvdXQgbWFzdGVyLCB0aGVy
ZSBpcyB0aGUgc2FtZSBpbWFnZcKgIHNwYWNlIGlzc3VlPGJyPg0KaGVyZSB0cmlnZ2VyZWQgaW4g
dGhlIHN0cmFjZSBwdGVzdCBieSB0aGUgbG9va3Mgb2YgaXQgd2hpY2ggdGhlbiBicmVha3M8YnI+
DQpvdGhlciB0ZXN0cyBsaWtlIHV0aWwtbGludXguPGJyPg0KPGJyPg0KQ2hlZXJzLDxicj4NCjxi
cj4NClJpY2hhcmQ8YnI+DQo8YnI+DQo8YnI+DQo8YnI+DQo8YnI+DQo8YnI+DQo8YnI+DQotLSA8
YnI+DQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXzxicj4N
CnlvY3RvIG1haWxpbmcgbGlzdDxicj4NCjxhIGhyZWY9Im1haWx0bzp5b2N0b0B5b2N0b3Byb2pl
Y3Qub3JnIiB0YXJnZXQ9Il9ibGFuayI+eW9jdG9AeW9jdG9wcm9qZWN0Lm9yZzwvYT48YnI+DQo8
YSBocmVmPSJodHRwczovL2xpc3RzLnlvY3RvcHJvamVjdC5vcmcvbGlzdGluZm8veW9jdG8iIHJl
bD0ibm9yZWZlcnJlciIgdGFyZ2V0PSJfYmxhbmsiPmh0dHBzOi8vbGlzdHMueW9jdG9wcm9qZWN0
Lm9yZy9saXN0aW5mby95b2N0bzwvYT48YnI+DQo8L2Jsb2NrcXVvdGU+PC9kaXY+PC9kaXY+DQo=

--0000000000006c9ec10585bdfed5--
