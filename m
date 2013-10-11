Return-Path: <vidal.develone@gmail.com>
Received: from mail-qc0-f176.google.com (mail-qc0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCBD1E0159B
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2013 14:49:36 -0700 (PDT)
Received: by mail-qc0-f176.google.com with SMTP id t7so3347148qcv.7
	for <yocto@yoctoproject.org>; Fri, 11 Oct 2013 14:49:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=RvUjXMrRR6C5pwnXLvE6iKM0fNr1riYmkpiCAd4QesA=;
	b=P/lnwVth7OT3eJZJMcEw+kd58I8r5fdUBoFYXYIvZp22QU33UT9ppjMMjknwQ2jFQ6
	Vw1k7kNjkgYK6UMTm2X//QCIPKOFW4E4R6yRqWQwiNAGOH1pWOtrXqj3Y1fDmZPW3dcE
	5LKVmIgVjf70dzX4YTS+ozmxvb4UCAbamzqeLs/YccEhTk1bpWtROIcWeUjA2E4KqF19
	IBlg/aYwHWjGNUHcjYTWy5vn/E4VkzMekyDRhcgUVp3vcMwuNttK2Eh2K/18mgOu89gv
	0YDmRzqBEmSORm0EaD+KxeXOxsUQb3ytmjVf+IRujYXbVwIEg9XOcdxljjk3WdN+L011
	xpew==
MIME-Version: 1.0
X-Received: by 10.224.20.198 with SMTP id g6mr20160279qab.24.1381528175550;
	Fri, 11 Oct 2013 14:49:35 -0700 (PDT)
Received: by 10.140.87.206 with HTTP; Fri, 11 Oct 2013 14:49:35 -0700 (PDT)
In-Reply-To: <CANwz6nyqsyOjL-C7iKu01wBcCs0bgCtMn39dmbk1gk55Ft1iVg@mail.gmail.com>
References: <CANwz6nyqsyOjL-C7iKu01wBcCs0bgCtMn39dmbk1gk55Ft1iVg@mail.gmail.com>
Date: Fri, 11 Oct 2013 15:49:35 -0600
Message-ID: <CANwz6nxX7B7YyGyd-JJ4OBnTFsEbL7JX4pvViRd6jjF-LJ1djw@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: preempt-rt zedboard
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
X-List-Received-Date: Fri, 11 Oct 2013 21:49:39 -0000
Content-Type: multipart/alternative; boundary=001a11c2919226a5e304e87e18d5

--001a11c2919226a5e304e87e18d5
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,
after many attempts I create a script to test if the patch would work.
#!/bin/bash
echo "removing older version"
rm -rf linux-stable-rt
echo "extracting a clean version"
tar xfz linux-stable-rt.tgz
echo "going to toplevel dir"
cd linux-stable-rt
echo "checkout of version before the patch"
git checkout v3.6.11.1
echo "checking which files will be patched"
git apply --stat ~/Downloads/patch-3.6.11.1-2
echo "checking if the patch can be applied without errors"
git apply --check ~/Downloads/patch-3.6.11.1-2
if I did not get errors then I executed
make ARCH=3Darm CROSS_COMPILE=3Darm-xilinx-linux-gnueabi- menuconfig
Kernel Features
Preemption Model (Voluntary Kernel Preemption (Desktop))  ---

=E2=94=80 Voluntary Kernel Preemption (Desktop) =E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=
=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90
  =E2=94=82 CONFIG_PREEMPT_VOLUNTARY:
=E2=94=82
  =E2=94=82
=E2=94=82
  =E2=94=82 This option reduces the latency of the kernel by adding more
=E2=94=82
  =E2=94=82 "explicit preemption points" to the kernel code. These new
=E2=94=82
  =E2=94=82 preemption points have been selected to reduce the maximum
=E2=94=82
  =E2=94=82 latency of rescheduling, providing faster application reactions=
,
=E2=94=82
  =E2=94=82 at the cost of slightly lower throughput.
=E2=94=82
  =E2=94=82
=E2=94=82
  =E2=94=82 This allows reaction to interactive events by allowing a
=E2=94=82
  =E2=94=82 low priority process to voluntarily preempt itself even if it
=E2=94=82
  =E2=94=82 is in kernel mode executing a system call. This allows
=E2=94=82
  =E2=94=82 applications to run more 'smoothly' even when the system is
=E2=94=82
  =E2=94=82 under load.
=E2=94=82
  =E2=94=82
=E2=94=82
  =E2=94=82 Select this if you are building a kernel for a desktop system.

git apply  < ~/Downloads/patch-3.6.11.1-2
<stdin>:5054: new blank line at EOF.
+
warning: 1 line adds whitespace errors.
After the patch was applied nothing seem to have changed.

I am thinking this should be the option selected instead of the one above.

Preemptible Kernel (Low-Latency Desktop) =E2=94=80=E2=94=80=E2=94=80=E2=94=
=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=80=
=E2=94=80=E2=94=80=E2=94=80=E2=94=80=E2=94=90
  =E2=94=82 CONFIG_PREEMPT:
=E2=94=82
  =E2=94=82
=E2=94=82
  =E2=94=82 This option reduces the latency of the kernel by making
=E2=94=82
  =E2=94=82 all kernel code (that is not executing in a critical section)
=E2=94=82
  =E2=94=82 preemptible.  This allows reaction to interactive events by
=E2=94=82
  =E2=94=82 permitting a low priority process to be preempted involuntarily
=E2=94=82
  =E2=94=82 even if it is in kernel mode executing a system call and would
=E2=94=82
  =E2=94=82 otherwise not be about to reach a natural preemption point.
=E2=94=82
  =E2=94=82 This allows applications to run more 'smoothly' even when the
=E2=94=82
  =E2=94=82 system is under load, at the cost of slightly lower throughput
=E2=94=82
  =E2=94=82 and a slight runtime overhead to kernel code.
=E2=94=82
  =E2=94=82
=E2=94=82
  =E2=94=82 Select this if you are building a kernel for a desktop or
=E2=94=82
  =E2=94=82 embedded system with latency requirements in the milliseconds
=E2=94=82
  =E2=94=82 range.
I still have not figured out how to merge the linux-digilent with the
patched linux-stable-rt kernel.

Any and all help will be appreciated.
Thanks

--001a11c2919226a5e304e87e18d5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: base64

PGRpdiBkaXI9Imx0ciI+PGRpdj48ZGl2PkhlbGxvLDxicj48L2Rpdj5hZnRlciBtYW55IGF0dGVt
cHRzIEkgY3JlYXRlIGEgc2NyaXB0IHRvIHRlc3QgaWYgdGhlIHBhdGNoIHdvdWxkIHdvcmsuPGJy
PiMhL2Jpbi9iYXNoPGJyPmVjaG8gJnF1b3Q7cmVtb3Zpbmcgb2xkZXIgdmVyc2lvbiZxdW90Ozxi
cj5ybSAtcmYgbGludXgtc3RhYmxlLXJ0PGJyPmVjaG8gJnF1b3Q7ZXh0cmFjdGluZyBhIGNsZWFu
IHZlcnNpb24mcXVvdDs8YnI+DQoNCnRhciB4ZnogbGludXgtc3RhYmxlLXJ0LnRnejxicj5lY2hv
ICZxdW90O2dvaW5nIHRvIHRvcGxldmVsIGRpciZxdW90Ozxicj5jZCBsaW51eC1zdGFibGUtcnQ8
YnI+ZWNobyAmcXVvdDtjaGVja291dCBvZiB2ZXJzaW9uIGJlZm9yZSB0aGUgcGF0Y2gmcXVvdDs8
YnI+Z2l0IGNoZWNrb3V0IHYzLjYuMTEuMTxicj5lY2hvICZxdW90O2NoZWNraW5nIHdoaWNoIGZp
bGVzIHdpbGwgYmUgcGF0Y2hlZCZxdW90Ozxicj4NCg0KZ2l0IGFwcGx5IC0tc3RhdCB+L0Rvd25s
b2Fkcy9wYXRjaC0zLjYuMTEuMS0yPGJyPmVjaG8gJnF1b3Q7Y2hlY2tpbmcgaWYgdGhlIHBhdGNo
IGNhbiBiZSBhcHBsaWVkIHdpdGhvdXQgZXJyb3JzJnF1b3Q7PGJyPmdpdCBhcHBseSAtLWNoZWNr
IH4vRG93bmxvYWRzL3BhdGNoLTMuNi4xMS4xLTI8YnI+PC9kaXY+aWYgSSBkaWQgbm90IGdldCBl
cnJvcnMgdGhlbiBJIGV4ZWN1dGVkPGJyPg0KbWFrZSBBUkNIPWFybSBDUk9TU19DT01QSUxFPWFy
bS14aWxpbngtbGludXgtZ251ZWFiaS0gbWVudWNvbmZpZzxicj5LZXJuZWwgRmVhdHVyZXM8YnI+
UHJlZW1wdGlvbiBNb2RlbCAoVm9sdW50YXJ5IEtlcm5lbCBQcmVlbXB0aW9uIChEZXNrdG9wKSnC
oCAtLS08YnI+PGJyPuKUgCBWb2x1bnRhcnkgS2VybmVsIFByZWVtcHRpb24gKERlc2t0b3ApIOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUkDxicj7C
oCDilIIgQ09ORklHX1BSRUVNUFRfVk9MVU5UQVJZOsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgIOKUgsKgIDxicj4NCsKgIOKUgsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCDilILCoCA8YnI+wqAg4pSCIFRoaXMgb3B0aW9uIHJlZHVjZXMgdGhlIGxhdGVuY3kgb2YgdGhl
IGtlcm5lbCBieSBhZGRpbmcgbW9yZcKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg4pSCwqAgPGJyPsKg
IOKUgiAmcXVvdDtleHBsaWNpdCBwcmVlbXB0aW9uIHBvaW50cyZxdW90OyB0byB0aGUga2VybmVs
IGNvZGUuIFRoZXNlIG5ld8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIOKUgsKgIDxicj4NCsKg
IOKUgiBwcmVlbXB0aW9uIHBvaW50cyBoYXZlIGJlZW4gc2VsZWN0ZWQgdG8gcmVkdWNlIHRoZSBt
YXhpbXVtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg4pSCwqAgPGJyPsKgIOKUgiBsYXRlbmN5
IG9mIHJlc2NoZWR1bGluZywgcHJvdmlkaW5nIGZhc3RlciBhcHBsaWNhdGlvbiByZWFjdGlvbnMs
wqDCoMKgwqDCoMKgwqAg4pSCwqAgPGJyPsKgIOKUgiBhdCB0aGUgY29zdCBvZiBzbGlnaHRseSBs
b3dlciB0aHJvdWdocHV0LsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoCDilILCoCA8YnI+DQrCoCDilILCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqAg4pSCwqAgPGJyPsKgIOKUgiBUaGlzIGFsbG93cyByZWFjdGlvbiB0byBpbnRl
cmFjdGl2ZSBldmVudHMgYnkgYWxsb3dpbmcgYcKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCDilILCoCA8YnI+wqAg4pSCIGxvdyBwcmlvcml0eSBwcm9jZXNzIHRvIHZvbHVudGFyaWx5IHBy
ZWVtcHQgaXRzZWxmIGV2ZW4gaWYgaXTCoMKgwqDCoMKgwqDCoMKgwqDCoCDilILCoCA8YnI+DQrC
oCDilIIgaXMgaW4ga2VybmVsIG1vZGUgZXhlY3V0aW5nIGEgc3lzdGVtIGNhbGwuIFRoaXMgYWxs
b3dzwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCDilILCoCA8YnI+wqAg4pSCIGFw
cGxpY2F0aW9ucyB0byBydW4gbW9yZSAmIzM5O3Ntb290aGx5JiMzOTsgZXZlbiB3aGVuIHRoZSBz
eXN0ZW0gaXPCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg4pSCwqAgPGJyPsKgIOKUgiB1bmRlciBs
b2FkLsKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCDilILCoCA8YnI+DQrCoCDilILCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAg4pSCwqAgPGJyPsKgIOKUgiBTZWxlY3QgdGhpcyBpZiB5b3UgYXJlIGJ1aWxkaW5nIGEga2Vy
bmVsIGZvciBhIGRlc2t0b3Agc3lzdGVtLsKgIDxicj4NCjxkaXY+PGJyPmdpdCBhcHBsecKgICZs
dDsgfi9Eb3dubG9hZHMvcGF0Y2gtMy42LjExLjEtMjxicj4mbHQ7c3RkaW4mZ3Q7OjUwNTQ6IG5l
dyBibGFuayBsaW5lIGF0IEVPRi48YnI+Kzxicj53YXJuaW5nOiAxIGxpbmUgYWRkcyB3aGl0ZXNw
YWNlIGVycm9ycy48YnI+QWZ0ZXIgdGhlIHBhdGNoIHdhcyBhcHBsaWVkIG5vdGhpbmcgc2VlbSB0
byBoYXZlIGNoYW5nZWQuPGJyPjxicj5JIGFtIHRoaW5raW5nIHRoaXMgc2hvdWxkIGJlIHRoZSBv
cHRpb24gc2VsZWN0ZWQgaW5zdGVhZCBvZiB0aGUgb25lIGFib3ZlLjxicj4NCjxicj5QcmVlbXB0
aWJsZSBLZXJuZWwgKExvdy1MYXRlbmN5IERlc2t0b3ApIOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKU
gOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUgOKUkDxicj7CoCDilIIgQ09ORklHX1BSRUVNUFQ6wqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCDilILC
oCA8YnI+wqAg4pSCwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIOKUgsKgIDxicj4NCsKg
IOKUgiBUaGlzIG9wdGlvbiByZWR1Y2VzIHRoZSBsYXRlbmN5IG9mIHRoZSBrZXJuZWwgYnkgbWFr
aW5nwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg4pSCwqAgPGJyPsKgIOKUgiBhbGwg
a2VybmVsIGNvZGUgKHRoYXQgaXMgbm90IGV4ZWN1dGluZyBpbiBhIGNyaXRpY2FsIHNlY3Rpb24p
wqDCoMKgwqDCoMKgwqDCoMKgwqAg4pSCwqAgPGJyPsKgIOKUgiBwcmVlbXB0aWJsZS7CoCBUaGlz
IGFsbG93cyByZWFjdGlvbiB0byBpbnRlcmFjdGl2ZSBldmVudHMgYnnCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqAg4pSCwqAgPGJyPg0KwqAg4pSCIHBlcm1pdHRpbmcgYSBsb3cgcHJpb3JpdHkgcHJv
Y2VzcyB0byBiZSBwcmVlbXB0ZWQgaW52b2x1bnRhcmlsecKgwqDCoMKgwqDCoMKgwqAg4pSCwqAg
PGJyPsKgIOKUgiBldmVuIGlmIGl0IGlzIGluIGtlcm5lbCBtb2RlIGV4ZWN1dGluZyBhIHN5c3Rl
bSBjYWxsIGFuZCB3b3VsZMKgwqDCoMKgwqDCoMKgwqDCoCDilILCoCA8YnI+wqAg4pSCIG90aGVy
d2lzZSBub3QgYmUgYWJvdXQgdG8gcmVhY2ggYSBuYXR1cmFsIHByZWVtcHRpb24gcG9pbnQuwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgIOKUgsKgIDxicj4NCsKgIOKUgiBUaGlzIGFsbG93cyBhcHBs
aWNhdGlvbnMgdG8gcnVuIG1vcmUgJiMzOTtzbW9vdGhseSYjMzk7IGV2ZW4gd2hlbiB0aGXCoMKg
wqDCoMKgwqDCoMKgwqDCoCDilILCoCA8YnI+wqAg4pSCIHN5c3RlbSBpcyB1bmRlciBsb2FkLCBh
dCB0aGUgY29zdCBvZiBzbGlnaHRseSBsb3dlciB0aHJvdWdocHV0wqDCoMKgwqDCoMKgwqDCoMKg
IOKUgsKgIDxicj7CoCDilIIgYW5kIGEgc2xpZ2h0IHJ1bnRpbWUgb3ZlcmhlYWQgdG8ga2VybmVs
IGNvZGUuwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oCDilILCoCA8YnI+DQrCoCDilILCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAg4pSCwqAg
PGJyPsKgIOKUgiBTZWxlY3QgdGhpcyBpZiB5b3UgYXJlIGJ1aWxkaW5nIGEga2VybmVsIGZvciBh
IGRlc2t0b3Agb3LCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIOKUgsKgIDxicj7CoCDilIIg
ZW1iZWRkZWQgc3lzdGVtIHdpdGggbGF0ZW5jeSByZXF1aXJlbWVudHMgaW4gdGhlIG1pbGxpc2Vj
b25kc8KgwqDCoMKgwqDCoMKgwqDCoMKgIOKUgsKgIDxicj4NCsKgIOKUgiByYW5nZS7CoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqAgPGJyPjwvZGl2PjxkaXY+SSBzdGlsbCBoYXZlIG5vdCBmaWd1cmVkIG91dCBob3cgdG8gbWVy
Z2UgdGhlIGxpbnV4LWRpZ2lsZW50IHdpdGggdGhlIHBhdGNoZWQgbGludXgtc3RhYmxlLXJ0IGtl
cm5lbC48YnI+PGJyPjwvZGl2PjxkaXY+QW55IGFuZCBhbGwgaGVscCB3aWxsIGJlIGFwcHJlY2lh
dGVkLjxicj48L2Rpdj4NCjxkaXY+VGhhbmtzPGJyPjwvZGl2PjwvZGl2Pg0K

--001a11c2919226a5e304e87e18d5--
