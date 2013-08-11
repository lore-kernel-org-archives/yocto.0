Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D7636E003D4
	for <yocto@yoctoproject.org>; Sat, 10 Aug 2013 22:12:27 -0700 (PDT)
Received: from ALA-HCB.corp.ad.wrs.com (ala-hcb.corp.ad.wrs.com
	[147.11.189.41])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r7B5COKl014537
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Sat, 10 Aug 2013 22:12:24 -0700 (PDT)
Received: from bruce-ashfields-macbook.local (128.224.20.232) by
	ALA-HCB.corp.ad.wrs.com (147.11.189.41) with Microsoft SMTP Server id
	14.2.342.3; Sat, 10 Aug 2013 22:12:24 -0700
Message-ID: <52071D37.9020009@windriver.com>
Date: Sun, 11 Aug 2013 01:12:23 -0400
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.7;
	rv:17.0) Gecko/20130801 Thunderbird/17.0.8
MIME-Version: 1.0
To: Martin Ertsaas <martiert@gmail.com>
References: <51F8BAE8.3090805@gmail.com>
	<CAAQYJAvPts390fqheZoHPN1XF3VtSZ8YaNuFp5P8f3fp_5r=ag@mail.gmail.com>
	<51F8EDB2.4020001@gmail.com>
	<CADkTA4NbutoU4AXyfQ84VQNCUmYv1PZwTFhYDBX8ENbOhCL0Gw@mail.gmail.com>
	<8FA37C33-DF65-4B96-BD90-4D3B784E4A57@gmail.com>
	<51FF1602.8040805@windriver.com>
	<BD3A762D-ACE6-4DB3-971F-B5CC975C0D69@gmail.com>
	<52028282.8020207@windriver.com> <520334EE.2090704@gmail.com>
	<5203913D.8090606@windriver.com>
In-Reply-To: <5203913D.8090606@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Building linux-yocto kernel in own bsp layer
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
X-List-Received-Date: Sun, 11 Aug 2013 05:12:29 -0000
X-Groupsio-MsgNum: 15421
Content-Type: multipart/mixed; boundary="------------030604030901080603060503"

--------------030604030901080603060503
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 13-08-08 8:38 AM, Bruce Ashfield wrote:
> On 13-08-08 02:04 AM, Martin Ertsaas wrote:
>> On 08/07/13 19:23, Bruce Ashfield wrote:
>>> On 13-08-07 12:31 PM, martiert@gmail.com wrote:
>>>> Bruce, have you had the opportunity to look at this yet?
>>>>
>>>
>>> I was about to email on this. I was out of the office last week, but
>>> was just starting on this last night.
>>>
>>> Cheers,
>>>
>>> Bruce
>>>
>> Great. Thanks for the help btw. It is greatly appreciated. I'm kind of
>> stuck on what I have done wrong on this one.
>
> Understood. I'm bumping this up to my list and have started a test build.

I've sorted this out. You didn't do anything wrong, outside of not
defining a BSP description for the board you are building.

I've had a patch queued for 1.5 that would have detected this mismatch
and adapted, but that change is held up on the 3.10 kernel and some
other changes .. but I digress.

This also should have been in the docs, since it is what the yocto-bsp
tool generates for new BSPs. But it's probably not obvious enough, and
with my pending patches, that should be ok .. but I digress again.

What basically happened is that the atom-pc BSP description was picked
to match your pandaboard build. That's why you see the different 
architecture
and what looks like an ignored defconfig. The tools will shortly
generate you a skeleton config, but for now, you need to define your
own that will be found and used.

I've attached a patch that does just that, and when I configured,
everything was applied properly.

Cheers,

Bruce

>
> Bruce
>
>>
>> - Martin
>>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--------------030604030901080603060503
Content-Type: application/mbox;
	name="0001-pandaboard-add-BSP-description.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment;
	filename="0001-pandaboard-add-BSP-description.patch"

RnJvbSBjZjczMzY1Nzk5N2M1MjViMWY0MmQxZmM1MzYyYTA5Y2Q5NGEzN2NlIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBCcnVjZSBBc2hmaWVsZCA8YnJ1Y2UuYXNoZmllbGRAd2luZHJp
dmVyLmNvbT4KRGF0ZTogU3VuLCAxMSBBdWcgMjAxMyAwMTowMjoxMyAtMDQwMApTdWJqZWN0OiBb
UEFUQ0hdIHBhbmRhYm9hcmQ6IGFkZCBCU1AgZGVzY3JpcHRpb24KClNpZ25lZC1vZmYtYnk6IEJy
dWNlIEFzaGZpZWxkIDxicnVjZS5hc2hmaWVsZEB3aW5kcml2ZXIuY29tPgotLS0KIC4uLi9saW51
eC9saW51eC15b2N0by0zLjQvcGFuZGFib2FyZC9wYW5kYWJvYXJkLXN0YW5kYXJkLnNjYyAgICAg
fCAgICA2ICsrKysrKwogcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgteW9jdG9fMy40LmJiYXBw
ZW5kICAgICAgICAgICAgICAgICAgICB8ICAgIDMgKystCiAyIGZpbGVzIGNoYW5nZWQsIDggaW5z
ZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQogY3JlYXRlIG1vZGUgMTAwNjQ0IHJlY2lwZXMta2Vy
bmVsL2xpbnV4L2xpbnV4LXlvY3RvLTMuNC9wYW5kYWJvYXJkL3BhbmRhYm9hcmQtc3RhbmRhcmQu
c2NjCgpkaWZmIC0tZ2l0IGEvcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgteW9jdG8tMy40L3Bh
bmRhYm9hcmQvcGFuZGFib2FyZC1zdGFuZGFyZC5zY2MgYi9yZWNpcGVzLWtlcm5lbC9saW51eC9s
aW51eC15b2N0by0zLjQvcGFuZGFib2FyZC9wYW5kYWJvYXJkLXN0YW5kYXJkLnNjYwpuZXcgZmls
ZSBtb2RlIDEwMDY0NAppbmRleCAwMDAwMDAwLi5jOTM4MGFhCi0tLSAvZGV2L251bGwKKysrIGIv
cmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgteW9jdG8tMy40L3BhbmRhYm9hcmQvcGFuZGFib2Fy
ZC1zdGFuZGFyZC5zY2MKQEAgLTAsMCArMSw2IEBACitkZWZpbmUgS01BQ0hJTkUgcGFuZGFib2Fy
ZAorZGVmaW5lIEtBUkNIIGFybQorZGVmaW5lIEtUWVBFIHN0YW5kYXJkCisKK2luY2x1ZGUga3R5
cGVzL3N0YW5kYXJkLnNjYworYnJhbmNoIHBhbmFkYWJvYXJkCmRpZmYgLS1naXQgYS9yZWNpcGVz
LWtlcm5lbC9saW51eC9saW51eC15b2N0b18zLjQuYmJhcHBlbmQgYi9yZWNpcGVzLWtlcm5lbC9s
aW51eC9saW51eC15b2N0b18zLjQuYmJhcHBlbmQKaW5kZXggZjM3ZTk0OC4uNzQxNmQyMyAxMDA2
NDQKLS0tIGEvcmVjaXBlcy1rZXJuZWwvbGludXgvbGludXgteW9jdG9fMy40LmJiYXBwZW5kCisr
KyBiL3JlY2lwZXMta2VybmVsL2xpbnV4L2xpbnV4LXlvY3RvXzMuNC5iYmFwcGVuZApAQCAtNCw0
ICs0LDUgQEAgU1JDUkVWX21hY2hpbmVfcGFuZGFib2FyZCA/PSAiN2ViNWZiZjkwM2Q5ZGI5MGMz
Y2YzNzFiNjVlMWYyYTY4ZDU2NzZkNyIKIAogRklMRVNFWFRSQVBBVEhTX3ByZXBlbmQgOj0gIiR7
VEhJU0RJUn0vJHtQTn0tMy40OiIKIAotU1JDX1VSSSArPSAiZmlsZTovL2RlZmNvbmZpZyIKK1NS
Q19VUkkgKz0gImZpbGU6Ly9kZWZjb25maWcgXAorICAgICAgICAgICAgZmlsZTovL3BhbmRhYm9h
cmQtc3RhbmRhcmQuc2NjICIKLS0gCjEuNy4xMC40Cgo=

--------------030604030901080603060503--
