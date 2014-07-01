Return-Path: <stefan.hofmann@mobserve.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6ADBE0054C; Tue,  1 Jul 2014 10:22:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.237.133.75 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 990 seconds by postgrey-1.32 at yocto-www;
	Tue, 01 Jul 2014 10:22:17 PDT
Received: from wp306.webpack.hosteurope.de (wp306.webpack.hosteurope.de
	[80.237.133.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F0EBE003D2
	for <yocto@yoctoproject.org>; Tue,  1 Jul 2014 10:22:17 -0700 (PDT)
Received: from [217.17.193.50] (helo=[192.168.100.20]); authenticated
	by wp306.webpack.hosteurope.de running ExIM with esmtpsa
	(TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32)
	id 1X21V4-00004w-1R; Tue, 01 Jul 2014 19:05:46 +0200
Message-ID: <53B2EA69.5000903@mobserve.de>
Date: Tue, 01 Jul 2014 19:05:45 +0200
From: Stefan Hofmann <stefan.hofmann@mobserve.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
X-bounce-key: webpack.hosteurope.de; stefan.hofmann@mobserve.de; 1404235341;
	31d75d2e; 
Subject: Understanding "Package groups"
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
X-List-Received-Date: Tue, 01 Jul 2014 17:22:23 -0000
X-Groupsio-MsgNum: 20343
Content-Type: multipart/signed; protocol="application/pkcs7-signature";
	micalg=sha1; boundary="------------ms080804010509090102010104"

--------------ms080804010509090102010104
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi,

I made my first steps with yocto and everything worked fine so far. But=20
now I am struggling with "package groups". What I basically want, is a=20
image for a base system, which allows me to install additional packages=20
over the air with opkg. In my imagination package groups are something=20
like preselected packages, which need to be installed at once similar=20
like it is handled in Debian for X11-support for example. Is this right=20
? I have built core-image-base for testing purposes and tried to figure=20
out the dependencies by using the Hob tool. It says that bash will be=20
installed and the group "base/shell" is responsible for that. However it =

is not installed, only ash and I cannot find a package group=20
"package-group-base-shell" in the receipes. It does however exist in the =

work directory. So now I am somewhat confused.

Regards,
Stefan

--=20



--------------ms080804010509090102010104
Content-Type: application/pkcs7-signature; name="smime.p7s"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="smime.p7s"
Content-Description: S/MIME Cryptographic Signature

MIAGCSqGSIb3DQEHAqCAMIACAQExCzAJBgUrDgMCGgUAMIAGCSqGSIb3DQEHAQAAoIIKVzCCBRow
ggQCoAMCAQICEG0Z6qcZT2ozIuYiMnqqcd4wDQYJKoZIhvcNAQEFBQAwga4xCzAJBgNVBAYTAlVT
MQswCQYDVQQIEwJVVDEXMBUGA1UEBxMOU2FsdCBMYWtlIENpdHkxHjAcBgNVBAoTFVRoZSBVU0VS
VFJVU1QgTmV0d29yazEhMB8GA1UECxMYaHR0cDovL3d3dy51c2VydHJ1c3QuY29tMTYwNAYDVQQD
Ey1VVE4tVVNFUkZpcnN0LUNsaWVudCBBdXRoZW50aWNhdGlvbiBhbmQgRW1haWwwHhcNMTEwNDI4
MDAwMDAwWhcNMjAwNTMwMTA0ODM4WjCBkzELMAkGA1UEBhMCR0IxGzAZBgNVBAgTEkdyZWF0ZXIg
TWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEaMBgGA1UEChMRQ09NT0RPIENBIExpbWl0ZWQx
OTA3BgNVBAMTMENPTU9ETyBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNlY3VyZSBFbWFpbCBD
QTCCASIwDQYJKoZIhvcNAQEBBQADggEPADCCAQoCggEBAJKEhFtLV5jUXi+LpOFAyKNTWF9mZfEy
TvefMn1V0HhMVbdClOD5J3EHxcZppLkyxPFAGpDMJ1Zifxe1cWmu5SAb5MtjXmDKokH2auGj/7jf
H0htZUOMKi4rYzh337EXrMLaggLW1DJq1GdvIBOPXDX65VSAr9hxCh03CgJQU2yVHakQFLSZlVkS
Mf8JotJM3FLb3uJAAVtIaN3FSrTg7SQfOq9xXwfjrL8UO7AlcWg99A/WF1hGFYE8aIuLgw9teiFX
5jSw2zJ+40rhpVJyZCaRTqWSD//gsWD9Gm9oUZljjRqLpcxCm5t9ImPTqaD8zp6Q30QZ9FxbNboW
86eb/8ECAwEAAaOCAUswggFHMB8GA1UdIwQYMBaAFImCZ33EnSZwAEu0UEh83j2uBG59MB0GA1Ud
DgQWBBR6E04AdFvGeGNkJ8Ev4qBbvHnFezAOBgNVHQ8BAf8EBAMCAQYwEgYDVR0TAQH/BAgwBgEB
/wIBADARBgNVHSAECjAIMAYGBFUdIAAwWAYDVR0fBFEwTzBNoEugSYZHaHR0cDovL2NybC51c2Vy
dHJ1c3QuY29tL1VUTi1VU0VSRmlyc3QtQ2xpZW50QXV0aGVudGljYXRpb25hbmRFbWFpbC5jcmww
dAYIKwYBBQUHAQEEaDBmMD0GCCsGAQUFBzAChjFodHRwOi8vY3J0LnVzZXJ0cnVzdC5jb20vVVRO
QWRkVHJ1c3RDbGllbnRfQ0EuY3J0MCUGCCsGAQUFBzABhhlodHRwOi8vb2NzcC51c2VydHJ1c3Qu
Y29tMA0GCSqGSIb3DQEBBQUAA4IBAQCF1r54V1VtM39EUv5C1QaoAQOAivsNsv1Kv/avQUn1G1rF
0q0bc24+6SZ85kyYwTAo38v7QjyhJT4KddbQPTmGZtGhm7VNm2+vKGwdr+XqdFqo2rHA8XV6L566
k3nK/uKRHlZ0sviN0+BDchvtj/1gOSBH+4uvOmVIPJg9pSW/ve9g4EnlFsjrP0OD8ODuDcHTzTNf
m9C9YGqzO/761Mk6PB/tm/+bSTO+Qik5g+4zaS6CnUVNqGnagBsePdIaXXxHmaWbCG0SmYbWXVcH
G6cwvktJRLiQfsrReTjrtDP6oDpdJlieYVUYtCHVmdXgQ0BCML7qpeeU0rD+83X5f27nMIIFNTCC
BB2gAwIBAgIQQBb+WIsrQhEJg/k1BLo9pDANBgkqhkiG9w0BAQUFADCBkzELMAkGA1UEBhMCR0Ix
GzAZBgNVBAgTEkdyZWF0ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEaMBgGA1UEChMR
Q09NT0RPIENBIExpbWl0ZWQxOTA3BgNVBAMTMENPTU9ETyBDbGllbnQgQXV0aGVudGljYXRpb24g
YW5kIFNlY3VyZSBFbWFpbCBDQTAeFw0xMzA3MDgwMDAwMDBaFw0xNDA3MDgyMzU5NTlaMCsxKTAn
BgkqhkiG9w0BCQEWGnN0ZWZhbi5ob2ZtYW5uQG1vYnNlcnZlLmRlMIIBIjANBgkqhkiG9w0BAQEF
AAOCAQ8AMIIBCgKCAQEAuVqypxBmBvm8+8zd5DOrfGhDs78vdD1F9xhbWrRF8mNdSnceiw8kmXj4
Clm+G0xrWm6Gl40l2xx4ZWWKwbaAQA7R/yj5Lj9JXxG5OffQ8g6KusAbqr1kCFjj5MBkqAQfPa8b
zplhWq0gNSYyhOuMfcsrBeKjaoudZZWlbN31c7yhQ3qwwM0XIXO2rvO/hE0MEE+RY5rJjNQHAWpV
gMyBYi3CHsUCWubTlaNA4yRMFRSBditSZuy1SaKmX0cvdWhcszgsjXYGybNRzheMVNgsWY8zx60p
rdcCL06Kz3P7pJAwRN7BQRyAcSSC6OFlLmZ0MGbx88nNjnlQ31QwZ516ZQIDAQABo4IB6jCCAeYw
HwYDVR0jBBgwFoAUehNOAHRbxnhjZCfBL+KgW7x5xXswHQYDVR0OBBYEFGscdBQI1XYj0dgEpJRV
FdZTCvlsMA4GA1UdDwEB/wQEAwIFoDAMBgNVHRMBAf8EAjAAMCAGA1UdJQQZMBcGCCsGAQUFBwME
BgsrBgEEAbIxAQMFAjARBglghkgBhvhCAQEEBAMCBSAwRgYDVR0gBD8wPTA7BgwrBgEEAbIxAQIB
AQEwKzApBggrBgEFBQcCARYdaHR0cHM6Ly9zZWN1cmUuY29tb2RvLm5ldC9DUFMwVwYDVR0fBFAw
TjBMoEqgSIZGaHR0cDovL2NybC5jb21vZG9jYS5jb20vQ09NT0RPQ2xpZW50QXV0aGVudGljYXRp
b25hbmRTZWN1cmVFbWFpbENBLmNybDCBiAYIKwYBBQUHAQEEfDB6MFIGCCsGAQUFBzAChkZodHRw
Oi8vY3J0LmNvbW9kb2NhLmNvbS9DT01PRE9DbGllbnRBdXRoZW50aWNhdGlvbmFuZFNlY3VyZUVt
YWlsQ0EuY3J0MCQGCCsGAQUFBzABhhhodHRwOi8vb2NzcC5jb21vZG9jYS5jb20wJQYDVR0RBB4w
HIEac3RlZmFuLmhvZm1hbm5AbW9ic2VydmUuZGUwDQYJKoZIhvcNAQEFBQADggEBAEuP2xp1SpzH
0VcUihLgML685xj2VnNdM3ceNLeoAS8nk/A1+eKH8ArwoI/oJWdo2MG6qb78kFMbQ/dotgWOpiq5
o30jPpiemnGZjYy42yHLzoNcKnpBaijy6kn0SY3eQQRhrZtCZHXbX73ORYh8K9n0Lv50xJP74F4p
e5WJN8JZhWPhU8nW8VvkdQLf6BafIYJwRgJuXlCTTXoDsNwEeOm0QaXFEN61S5r00HYIdxcV7KdO
kNQyJPatZr0DKk/yTSpdOzEUftwWHQqUwkYx32fje2qJTyW4uKoZf+slGkFppbW+JwYHd4K9auPM
U5+W4hhSm7I+pAV9FS/7bOPH7SIxggQZMIIEFQIBATCBqDCBkzELMAkGA1UEBhMCR0IxGzAZBgNV
BAgTEkdyZWF0ZXIgTWFuY2hlc3RlcjEQMA4GA1UEBxMHU2FsZm9yZDEaMBgGA1UEChMRQ09NT0RP
IENBIExpbWl0ZWQxOTA3BgNVBAMTMENPTU9ETyBDbGllbnQgQXV0aGVudGljYXRpb24gYW5kIFNl
Y3VyZSBFbWFpbCBDQQIQQBb+WIsrQhEJg/k1BLo9pDAJBgUrDgMCGgUAoIICRTAYBgkqhkiG9w0B
CQMxCwYJKoZIhvcNAQcBMBwGCSqGSIb3DQEJBTEPFw0xNDA3MDExNzA1NDVaMCMGCSqGSIb3DQEJ
BDEWBBSFAWMNZv2bP8+7elFeePG6bfNs9jBsBgkqhkiG9w0BCQ8xXzBdMAsGCWCGSAFlAwQBKjAL
BglghkgBZQMEAQIwCgYIKoZIhvcNAwcwDgYIKoZIhvcNAwICAgCAMA0GCCqGSIb3DQMCAgFAMAcG
BSsOAwIHMA0GCCqGSIb3DQMCAgEoMIG5BgkrBgEEAYI3EAQxgaswgagwgZMxCzAJBgNVBAYTAkdC
MRswGQYDVQQIExJHcmVhdGVyIE1hbmNoZXN0ZXIxEDAOBgNVBAcTB1NhbGZvcmQxGjAYBgNVBAoT
EUNPTU9ETyBDQSBMaW1pdGVkMTkwNwYDVQQDEzBDT01PRE8gQ2xpZW50IEF1dGhlbnRpY2F0aW9u
IGFuZCBTZWN1cmUgRW1haWwgQ0ECEEAW/liLK0IRCYP5NQS6PaQwgbsGCyqGSIb3DQEJEAILMYGr
oIGoMIGTMQswCQYDVQQGEwJHQjEbMBkGA1UECBMSR3JlYXRlciBNYW5jaGVzdGVyMRAwDgYDVQQH
EwdTYWxmb3JkMRowGAYDVQQKExFDT01PRE8gQ0EgTGltaXRlZDE5MDcGA1UEAxMwQ09NT0RPIENs
aWVudCBBdXRoZW50aWNhdGlvbiBhbmQgU2VjdXJlIEVtYWlsIENBAhBAFv5YiytCEQmD+TUEuj2k
MA0GCSqGSIb3DQEBAQUABIIBAH/ylMAHK9GwVd+Bn7SdjECkCTHIOA5efDsNNf5c4EIw1TN9uh9m
Nz/cdLeroxlX1A8ltvrMByk1Z7s0mIl78PSs3szVrtgcAsvvyJhYLHVX8BrWCOK5oYkmhMYHEQPe
UGzDOtiXz/iZtrFJg43OvFX3b11gM1yZ1557oEiz0aMSoN/u9zfbCSQ3kbHCMPhgVvAoqhrGAx4W
8pPBNwGhrvsTA80g3HgP/ohp0nE4WNy6sdGzNYPZzNIjqsqKc1T/R+J6+/rBTcas7tH3xA2afOGb
7Vh44/Dv6rW6+C2xfYXVM+/JRMW/Ys3x7cLOhZWslqiSpQmxW4lU15DQrLwiyHMAAAAAAAA=

--------------ms080804010509090102010104--
