Return-Path: <chris@yassl.com>
Received: from smtpauth20.prod.mesa1.secureserver.net
	(smtpauth20.prod.mesa1.secureserver.net [64.202.165.36])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id C3F73E01489
	for <yocto@yoctoproject.org>; Thu,  6 Sep 2012 15:38:38 -0700 (PDT)
Received: (qmail 26568 invoked from network); 6 Sep 2012 22:38:23 -0000
Received: from unknown (174.45.76.142)
	by smtpauth20.prod.mesa1.secureserver.net (64.202.165.36) with ESMTP;
	06 Sep 2012 22:38:22 -0000
Mime-Version: 1.0 (Apple Message framework v1084)
From: Chris Conlon <chris@yassl.com>
In-Reply-To: <50492051.8020109@linux.intel.com>
Date: Thu, 6 Sep 2012 16:38:21 -0600
Message-Id: <611E7277-9841-4B9C-A664-329376DCF9FF@yassl.com>
References: <AA149620-AFAF-4670-8666-A34E500ADA75@yassl.com>
	<ADD6A3980E8C39419A432FF422031B4C0CCBAAD9@ORSMSX106.amr.corp.intel.com>
	<A1E9071B-69AC-4306-ADEB-3C24FAC448C6@yassl.com>
	<50492051.8020109@linux.intel.com>
To: Saul Wold <sgw@linux.intel.com>
X-Mailer: Apple Mail (2.1084)
Cc: yocto@yoctoproject.org
Subject: Re: CyaSSL Yocto Recipe
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
X-List-Received-Date: Thu, 06 Sep 2012 22:38:39 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Saul,

On Sep 6, 2012, at 4:14 PM, Saul Wold wrote:

> On 09/06/2012 02:59 PM, Chris Conlon wrote:
>> Adding a direct link to the CyaSSL recipe file for review:
>>=20
>> www.yassl.com/files/yocto/cyassl_2.3.0.bb
>> <http://www.yassl.com/files/yocto/cyassl_2.3.0.bb>
>>=20
> Chris,
>=20
> On initial inspection of this recipe it looks OK, what =
package/libraries does it provide?  Are they the same as the openssl =
package?

It provides the CyaSSL embedded SSL library, specifically called =
"libcyassl".  Although it offers similar functionality as the openssl =
package (SSL and crypto support), it shouldn't conflict naming wise.  =
OpenSSL's library names are "libssl" and "libcrypto".

>=20
> You may need RCONFLICTS_${PN} and/or RPROVIDES_${PN}, where the ${PN} =
may need to be the package names in openssl, I need to check that.

CyaSSL shouldn't conflict with OpenSSL, as it has a different library =
name and header location.  Thanks for the suggestion about RPROVIDES.  =
I'm new to writing recipe files, so your feedback is very appreciated.

>=20
> I would suggest that initially you make this available as a standard
> layer, possibly called meta-cyassl, it could be hosted on GitHub. You =
can add it to the OpenEmbedded Layer Index. See =
http://www.openembedded.org/wiki/LayerIndex
>=20
> Distributions that want to use this instead of OpenSSL can then use =
your layer and select your recipe, if it's setup correctly it will =
provide what they need.

Ok, thanks for the pointer.  Any chance of the recipe getting rolled =
into the OpenEmbedded/Yocto meta/recipes-connectivity layer?

Thanks,
Chris=

