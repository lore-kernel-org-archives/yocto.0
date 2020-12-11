Subject: Re: curl_easy_perform() failed: Couldn't connect to server #linux #yocto
To: yocto@lists.yoctoproject.org
From: vijayrakeshmunganda@gmail.com
X-Originating-Location: Bengaluru, Karnataka, IN (36.255.86.173)
X-Originating-Platform: iPhone Safari 14
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 11 Dec 2020 09:51:26 -0800
References: <5efa9771-376a-3e4b-2cad-bf7c6741679e@gmail.com>
In-Reply-To: <5efa9771-376a-3e4b-2cad-bf7c6741679e@gmail.com>
Message-ID: <7957.1607709086976048136@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="xUO4XNSHGmZDRpjxp7kJ"

--xUO4XNSHGmZDRpjxp7kJ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 11, 2020 at 09:04 AM, Khem Raj wrote:

>=20
> On 12/11/20 2:26 AM, vijayrakeshmunganda@gmail.com wrote:
>=20
>> Hi,
>>=20
>> I'm trying to do HTTPS POST using curl with CA certificate, but I got a=
n
>> error as "curl_easy_perform() failed: Couldn't connect to server". The
>> same code works on a Linux machine but not on my target board, I can't
>> understand what I'm missing. I have an active internet connection
>> without any firewall. Kindly please give any suggestions.
>=20
> check what all packageconfig is being used are you using gnutls, then
> you might want to try nss or openssl and see if that helps.
>=20
>=20
>> Thanks & Regards,
>> Vijay
>>=20
>>=20
>>=20
>>=20
>=20
>=20

Hi Khem Raj,

Thanks for the reply. I had installed openssl and curl, but not gnutls bec=
ause compilation was successful. I=E2=80=99ll definitely try ur suggestion.=
 Thank you!

Please correct me if I=E2=80=99m wrong, even if dependent packages are not=
 installed on target system will compilation done successfully? I=E2=80=99m
also facing similar issue with zbar, compilation was successful and perfec=
tly executing on Linux PC, but not my target board even after installing zb=
ar package.

Thanks & Regards,
Vijay Rakesh.

--xUO4XNSHGmZDRpjxp7kJ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 11, 2020 at 09:04 AM, Khem Raj wrote:<br />
<blockquote>On 12/11/20 2:26 AM, vijayrakeshmunganda@gmail.com wrote:<br /=
>
<blockquote>Hi,<br /><br />I'm trying to do HTTPS POST using curl with CA =
certificate, but I got an <br />error as "curl_easy_perform() failed: Could=
n't connect to server". The <br />same code works on a Linux machine but no=
t on my target board, I can't <br />understand what I'm missing. I have an =
active internet connection <br />without any firewall. Kindly please give a=
ny suggestions.</blockquote>
check what all packageconfig is being used are you using gnutls, then <br =
/>you might want to try nss or openssl and see if that helps.<br /><br />
<blockquote>Thanks &amp; Regards,<br />Vijay<br /><br /><br /><br /></bloc=
kquote>
</blockquote>
<p><br />&nbsp;Hi Khem Raj,<br /><br />Thanks for the reply. I had install=
ed openssl and curl, but not gnutls because compilation was successful. I&r=
squo;ll definitely try ur suggestion. Thank you!&nbsp;</p>
<p>Please correct me if I&rsquo;m wrong, even if dependent packages are no=
t installed on target system will compilation done successfully? I&rsquo;m<=
br />also facing similar issue with zbar, compilation was successful and pe=
rfectly executing on Linux PC, but not my target board even after installin=
g zbar package.&nbsp;</p>
<p>Thanks &amp; Regards,<br />Vijay Rakesh.&nbsp;</p>

--xUO4XNSHGmZDRpjxp7kJ--
